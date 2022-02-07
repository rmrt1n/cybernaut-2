-- modules
insert into modules values ('4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Intro to Phishing'); 
insert into modules (name) values ('Cybersecurity General Knowledge'); 
insert into modules (name) values ('Vishing 101'); 
insert into modules (name) values ('History of Ransomware'); 


-- questions
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
