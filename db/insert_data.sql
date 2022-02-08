-- modules
insert into modules values ('4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Intro to Phishing'); 
insert into modules (name) values ('Cybersecurity General Knowledge'); 
insert into modules (name) values ('Vishing 101'); 
insert into modules (name) values ('History of Ransomware'); 


-- questions
-- src: https://www.ftc.gov/tips-advice/business-center/small-businesses/cybersecurity/quiz/phishing
insert into questions (module_id, question)
values
  ('877111a1-1e62-4256-bf58-c4e9f404082d', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Which one of these statements is correct?'),
  ('cb4f186d-d3b7-430c-895b-f9d53267d582', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'An email from your boss asks for the name, addresses, and credit card information of the company’s top clients. The email says it’s urgent and to please reply right away. You should reply right away. True or False?'),
  ('7f619d05-caff-4f94-b1e2-4462ff916b86', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'You get a text message from a vendor who asks you to click on a link to renew your password so that you can log in to its website. You should:'),
  ('68a54a79-99a9-4d7d-b507-ff742d771eeb', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Email authentication can help protect against phishing attacks. True or False?'),
  ('9602ef64-13b8-48d3-b227-2c13c62cf0cb', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'If you fall for a phishing scam, what should you do to limit the damage?');

-- choices
insert into choices (question_id, choice, is_correct)
values
  ('877111a1-1e62-4256-bf58-c4e9f404082d', 'If you get an email that looks like it’s from someone you know, you can click on any links as long as you have a spam blocker and anti-virus protection.', false),
  ('877111a1-1e62-4256-bf58-c4e9f404082d', 'You can trust an email really comes from a client if it uses the client’s logo and contains at least one fact about the client that you know to be true.', false),
  ('877111a1-1e62-4256-bf58-c4e9f404082d', 'If you get a message from a colleague who needs your network password, you should never give it out unless the colleague says it’s an emergency.', false),
  ('877111a1-1e62-4256-bf58-c4e9f404082d', 'If you get an email from Human Resources asking you to provide personal information right away, you should check it out first to make sure they are who they say are.', true),

  ('cb4f186d-d3b7-430c-895b-f9d53267d582', 'True', false),
  ('cb4f186d-d3b7-430c-895b-f9d53267d582', 'False', true),

  ('7f619d05-caff-4f94-b1e2-4462ff916b86', 'Reply to the text to confirm that you really need to renew your password.', false),
  ('7f619d05-caff-4f94-b1e2-4462ff916b86', 'Pick up the phone and call the vendor, using a phone number you know to be correct, to confirm that the request is real.', true);
  ('7f619d05-caff-4f94-b1e2-4462ff916b86', 'Click on the link. If it takes you to the vendor’s website, then you’ll know it’s not a scam.', false),

  ('68a54a79-99a9-4d7d-b507-ff742d771eeb', 'True', true),
  ('68a54a79-99a9-4d7d-b507-ff742d771eeb', 'False', false),

  ('9602ef64-13b8-48d3-b227-2c13c62cf0cb', 'Delete the phishing email.', false),
  ('9602ef64-13b8-48d3-b227-2c13c62cf0cb', 'Unplug the computer. This will get rid of any malware.', false),
  ('9602ef64-13b8-48d3-b227-2c13c62cf0cb', 'Change any compromised passwords.', true);

insert into tags
values 
  ('517038c5-7d82-453a-a35c-f9d0b4c4787f', 'phishing'),
  ('f441f6b8-de76-44af-90f1-6e6ba92f50bc', 'beginner'), 
  ('68fac2e4-bb37-4a9b-91af-6334f6887482', 'cybersecurity');

insert into articles (id, title, body, author)
values
  ('736970db-1365-4eb0-8ffb-acf1063c1209', 'What is phishing', 'Phishing is a cybercrime in which a target or targets are contacted by email,
    telephone or text message by someone posing as a legitimate institution to lure
    individuals into providing sensitive data such as personally identifiable
    information, banking and credit card details, and passwords.

    The information is then used to access important accounts and can result in
    identity theft and financial loss.

    The first phishing lawsuit was filed in 2004 against a Californian teenager who
    created the imitation of the website “America Online”. With this fake website,
    he was able to gain sensitive information from users and access the credit card
    details to withdraw money from their accounts. Other than email and website
    phishing, there’s also ''vishing'' (voice phishing), ''smishing'' (SMS Phishing) and
  several other phishing techniques cybercriminals are constantly coming up with. 

 
## Common Features of Phishing Emails

1. Too Good To Be True - Lucrative offers and eye-catching or
attention-grabbing statements are designed to attract people’s attention
immediately. For instance, many claim that you have won an iPhone, a
lottery, or some other lavish prize. Just don''t click on any suspicious
emails. Remember that if it seems to good to be true, it probably is!

2. Sense of Urgency - A favorite tactic amongst cybercriminals is to ask
you to act fast because the super deals are only for a limited time.
Some of them will even tell you that you have only a few minutes to
respond. When you come across these kinds of emails, it''s best to just
ignore them. Sometimes, they will tell you that your account will be
suspended unless you update your personal details immediately. Most
reliable organizations give ample time before they terminate an account
and they never ask patrons to update personal details over the
Internet. When in doubt, visit the source directly rather than clicking
a link in an email.

3. Hyperlinks - A link may not be all it appears to be. Hovering over
a link shows you the actual URL where you will be directed upon
clicking on it. It could be completely different or it could be a
popular website with a misspelling, for instance
www.bankofarnerica.com - the ''m'' is actually an ''r'' and an ''n'', so
look carefully.

4. Attachments - If you see an attachment in an email you weren''t
expecting or that doesn''t make sense, don''t open it! They often
contain payloads like ransomware or other viruses. The only
file type that is always safe to click on is a .txt file.

5. Unusual Sender - Whether it looks like it''s from someone
you don''t know or someone you do know, if anything seems
out of the ordinary, unexpected, out of character or just
suspicious in general don''t click on it!

Here is a great KnowBe4 resource that outlines 22 social engineering red flags
commonly seen in phishing emails. We recommend printing out this PDF to pass
along to family, friends, and coworkers.

## Prevent Phishing Attacks:

Though hackers are constantly coming up with new techniques, there are some
things that  you can do to protect yourself and your organization:

- To protect against spam mails, spam filters can be used. Generally, the
filters assess the origin of the message, the software used to send the
message, and the appearance of the message to determine if it’s spam.
Occasionally, spam filters may even block emails from legitimate sources, so
it isn’t always 100% accurate.

- The browser settings should be changed to prevent fraudulent websites
from opening. Browsers keep a list of fake websites and when you try to
access the website, the address is blocked or an alert message is shown.
The settings of the browser should only allow reliable websites to open
up.

- Many websites require users to enter login information while the
user image is displayed. This type of system may be open to security
attacks. One way to ensure security is to change passwords on a
regular basis, and never use the same password for multiple
accounts. It’s also a good idea for websites to use a CAPTCHA system
for added security.

- Banks and financial organizations use monitoring systems to
prevent phishing. Individuals can report phishing to industry
groups where legal actions can be taken against these fraudulent
websites. Organizations should provide security awareness
training to employees to recognize the risks.

- Changes in browsing habits are required to prevent phishing.
If verification is required, always contact the company
personally before entering any details online.

- If there is a link in an email, hover over the URL
first. Secure websites with a valid Secure Socket Layer
(SSL) certificate begin with “https”. Eventually all
sites will be required to have a valid SSL. 

Generally, emails sent by a cybercriminals are masked so they appear to be sent
by a business whose services are used by the recipient. A bank will not ask for
personal information via email or suspend your account if you do not update your
personal details within a certain period of time. Most banks and financial
institutions also usually provide an account number or other personal details
within the email, which ensures it’s coming from a reliable source.',
'text'
);

insert into article_tags
values 
  ('736970db-1365-4eb0-8ffb-acf1063c1209', '517038c5-7d82-453a-a35c-f9d0b4c4787f'),
  ('736970db-1365-4eb0-8ffb-acf1063c1209', 'f441f6b8-de76-44af-90f1-6e6ba92f50bc'),
  ('736970db-1365-4eb0-8ffb-acf1063c1209', '68fac2e4-bb37-4a9b-91af-6334f6887482');
