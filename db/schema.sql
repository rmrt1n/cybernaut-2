create table modules (
  id uuid default uuid_generate_v4() primary key,
  name text not null,
  thumbnail text
);
alter table modules enable row level security;

create policy "Enable read to everyone" on modules
for select using (true);


create table questions (
  id uuid default uuid_generate_v4() primary key,
  module_id uuid,
  question text not null,
  constraint fk_module
    foreign key(module_id)
    references modules(id)
    on delete cascade
);
alter table questions enable row level security;

create policy "Enable read to everyone" on modules
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

create policy "Enable read to everyone" on modules
for select using (true);
