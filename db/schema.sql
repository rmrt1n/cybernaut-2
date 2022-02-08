create table exercises (
  id uuid default uuid_generate_v4() primary key,
  name text not null,
  thumbnail text
);
alter table exercises enable row level security;

create policy "Enable read to everyone" on exercises
for select using (true);


create table questions (
  id uuid default uuid_generate_v4() primary key,
  exercise_id uuid,
  question text not null,
  constraint fk_exercise
    foreign key(exercise_id)
    references exercises(id)
    on delete cascade
);
alter table questions enable row level security;

create policy "Enable read to everyone" on exercises
for select using (true);

create table choices (
  id uuid default uuid_generate_v4() primary key,
  question_id uuid,
  choice text not null,
  is_correct boolean not null,
  constraint fk_question
    foreign key(question_id)
    references questions(id)
    on delete cascade
);
alter table choices enable row level security;

create policy "Enable read to everyone" on exercises
for select using (true);

create table articles (
  id uuid default uuid_generate_v4() primary key,
  title text not null,
  body text not null,
  author text,
  created_at timestamptz default now() not null,
  updated_at timestamptz default now() not null
);
alter table articles enable row level security;

create table tags (
  id uuid default uuid_generate_v4() primary key,
  tag text not null
);
alter table tags enable row level security;

create table article_tags (
  article_id uuid,
  tag_id uuid,
  primary key(article_id, tag_id),
  constraint fk_article
    foreign key(article_id)
    references articles(id)
    on delete cascade,
  constraint fk_tag
    foreign key(tag_id)
    references tags(id)
    on delete cascade
);
alter table article_tags enable row level security;

create view article_tags_aggr as
select 
  a.id,
  a.title,
  substring(a.body, 0, 300) preview,
  a.author,
  a.updated_at,
  array_agg(t.tag) tags
from articles a
left join article_tags at
  on at.article_id = a.id
left join tags t
  on at.tag_id = t.id
group by a.id

