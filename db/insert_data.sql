-- modules
insert into modules values ('4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Intro to Phishing'); 
insert into modules (name) values ('2cef987f-19a4-46b7-99ee-054ffc3ed60f', 'Cybersecurity General Knowledge'); 
insert into modules (name) values ('Vishing 101'); 
insert into modules (name) values ('History of Ransomware'); 


-- questions
-- src: https://www.ftc.gov/tips-advice/business-center/small-businesses/cybersecurity/quiz/phishing
insert into questions (module_id, question)
values
-- src: https://www.ftc.gov/tips-advice/business-center/small-businesses/cybersecurity/quiz/phishing
  ('877111a1-1e62-4256-bf58-c4e9f404082d', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Which one of these statements is correct?'),
  ('cb4f186d-d3b7-430c-895b-f9d53267d582', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'An email from your boss asks for the name, addresses, and credit card information of the company’s top clients. The email says it’s urgent and to please reply right away. You should reply right away. True or False?'),
  ('7f619d05-caff-4f94-b1e2-4462ff916b86', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'You get a text message from a vendor who asks you to click on a link to renew your password so that you can log in to its website. You should:'),
  ('68a54a79-99a9-4d7d-b507-ff742d771eeb', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'Email authentication can help protect against phishing attacks. True or False?'),
  ('9602ef64-13b8-48d3-b227-2c13c62cf0cb', '4aa6727d-9e8b-4970-a450-eebfa414dcf6', 'If you fall for a phishing scam, what should you do to limit the damage?');
-- https://www.ftc.gov/tips-advice/business-center/small-businesses/cybersecurity/quiz/basics
  ('', '2cef987f-19a4-46b7-99ee-054ffc3ed60f', 'Which of the following should you do to restrict access to your files and devices?'),
  ('', '2cef987f-19a4-46b7-99ee-054ffc3ed60f', 'Backing up important files offline, on an external hard drive or in the cloud, will help protect your business in the event of a cyber attack. True or False?'),
  ('', '2cef987f-19a4-46b7-99ee-054ffc3ed60f', 'Which is the best answer for which people in a business should be responsible for cybersecurity?'),
  ('', '2cef987f-19a4-46b7-99ee-054ffc3ed60f', 'Cyber criminals only target large companies. True or False?'),
  ('', '2cef987f-19a4-46b7-99ee-054ffc3ed60f', 'Which of the following is the best answer for how to secure your router?');

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
  ('9602ef64-13b8-48d3-b227-2c13c62cf0cb', 'Change any compromised passwords.', true),


  ('0c8fb537-e258-4f46-8544-9a97c6058844', 'Update your software once a year.', false),
  ('0c8fb537-e258-4f46-8544-9a97c6058844', 'Share passwords only with colleagues you trust.', false),
  ('0c8fb537-e258-4f46-8544-9a97c6058844', 'Have your staff members access information via an open Wi-Fi network.', false),
  ('0c8fb537-e258-4f46-8544-9a97c6058844', '', true),

  ('fb4b27f5-e7d6-4247-a140-17adb51dcd00', 'True', true),
  ('fb4b27f5-e7d6-4247-a140-17adb51dcd00', 'False', false),
   
  ('b938b038-adfe-4db9-ba04-2c4a7e5cc160', 'Business owners. They run the business, so they need to know cybersecurity basics and put them in practice to reduce the risk of cyber attacks.', false),
  ('b938b038-adfe-4db9-ba04-2c4a7e5cc160', 'IT specialists, because they are in the best position to know about and promote cybersecurity within a business.', false),
  ('b938b038-adfe-4db9-ba04-2c4a7e5cc160', 'Managers, because they are responsible for making sure that staff members are following the right practices.', false),
  ('b938b038-adfe-4db9-ba04-2c4a7e5cc160', 'All staff members should know some cybersecurity basics to reduce the risk of cyber attacks.', true),

  ('3d2c9873-49f3-4140-a121-b0f6f355b454', 'True', false),
  ('3d2c9873-49f3-4140-a121-b0f6f355b454', 'False', false),

  ('b6a883ce-12b7-4039-913c-6aaf1d8678af', 'Change the default name and password of the router.', false),
  ('b6a883ce-12b7-4039-913c-6aaf1d8678af', 'Turn off the router’s remote management.', false),
  ('b6a883ce-12b7-4039-913c-6aaf1d8678af', 'Log out as the administrator once the router is set up.', false),
  ('b6a883ce-12b7-4039-913c-6aaf1d8678af', 'All of the above.', true);

insert into tags
values 
  ('517038c5-7d82-453a-a35c-f9d0b4c4787f', 'phishing'),
  ('f441f6b8-de76-44af-90f1-6e6ba92f50bc', 'beginner'), 
  ('68fac2e4-bb37-4a9b-91af-6334f6887482', 'cybersecurity'),
  ('b9112b9f-0ef2-40f5-8149-f3f0b03638ec', 'history'),
  ('b4945aa4-b2ec-4d5e-91aa-bc2413177265', 'knowledge');

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
'author'
),
  ('7ba11869-7da2-461b-a5fe-5ace392cc3e1', 'History of Phishing',
   'As widespread and well-known as phishing is now, it hasn’t been around forever.
  Although the practice originated sometime around the year 1995, these types of
  scams were not commonly known by everyday people until nearly ten years later.

  That doesn’t mean that phishing was not a force to be reckoned with right from
  the start. In order to avoid falling prey to such scams yourself, it is helpful
  to have a basic understanding of the history behind them. 

  ## Name Origins

  Phishing scams use spoofed emails and websites as lures to prompt people to
  voluntarily hand over sensitive information. It isn’t surprising, then, that the
  term “phishing” is commonly used to describe these ploys. There is also a good
  reason for the use of “ph” in place of the “f” in the spelling of the term. Some
  of the earliest hackers were known as phreaks. Phreaking refers to the
  exploration, experimenting and study of telecommunication systems. Phreaks and
  hackers have always been closely linked. The “ph” spelling was used to link
  phishing scams with these underground communities.

  ##First Recorded Mention

  According to Internet records, the first time that the term “phishing” was used
  and recorded was on January 2, 1996. The mention occurred in a Usenet newsgroup
  called AOHell. It is fitting that it was made there too; America Online is where
  the first rumblings of what would become a major criminal issue would take
  place.


  ## Phishing’s America Online Origins

  Back when America Online (AOL) was the number-one provider of Internet access,
  millions of people logged on to the service each day. Its popularity made it a
  natural choice for those who had less than pure motives. From the beginning,
  hackers and those who traded pirated software used the service to communicate
  with one another. This community was referred to as the warez community. It was
  this community that eventually made the first moves to conduct phishing
  attacks.

  The first way in which phishers conducted attacks was by stealing users''
passwords and using algorithms to create randomized credit card numbers. While
lucky hits were few and far between, they struck the jackpot often enough to
cause a lot of damage. The random credit card numbers were used to open AOL
accounts. Those accounts were then used to spam other users and for a wide
range of other things. Special programs like AOHell were used to simplify the
process. This practice was put to an end by AOL in 1995, when the company
created security measures to prevent the successful use of randomly generated
credit card numbers.

## Phishing Attacks Begin

With their random credit card number generating racket shut down, phishers
created what would become a very common and enduring set of techniques. Through
the AOL instant messenger and email systems, they would send messages to users
while posing as AOL employees.

Those messages would request users to verify their accounts or to confirm their
billing information. More often than not, people fell for the ruse; after all,
nothing like it had ever been done before. The problem intensified when
phishers set up AIM accounts through the Internet; such accounts could not be
“punished” by the AOL TOS department. Eventually, AOL was forced to include
warnings on its email and instant messenger clients to keep people from
providing sensitive information through such methods.


## The Evolution of Phishing

In many ways, phishing hasn’t changed a lot since its AOL heyday. In 2001,
however, phishers turned their attention to online payment systems. Although
the first attack, which was on E-Gold in June 2001, was not considered to be
successful, it planted an important seed. In late 2003, phishers registered
dozens of domains that looked like legitimate sites like eBay and PayPal if
you weren''t paying attention. They used email worm programs to send out
spoofed emails to PayPal customers. Those customers were led to spoofed sites
and asked to update their credit card details and other identifying
information.

By the beginning of 2004, phishers were riding a huge wave of success that
included attacks on banking sites and their customers. Popup windows were used
to acquire sensitive information from victims. Between May 2004 and May 2005,
about 1.2 million users in the U.S. suffer losses caused by phishing, totaling
approximately $929 million. Organizations lose about $2 billion per year to
phishing.

Phishing is officially recognized as a fully organized part of the black
market. Specialized software emerges on a global scale that can handle
phishing payments, which in turn outsources a huge risk. The software is
implemented into phishing campaigns by organized crime gangs.

In late 2008, Bitcoin and other cryptocurrencies are launched. This allows
transactions using malicious software to be secure and anonymous, changing the
game for cybercriminals.


## Phishing and Ransomware

In September of 2013, Cryptolocker ransomware infected 250,000 personal
computers, making it the first cryptographic malware spread by downloads from
a compromised website and/or sent to victims in the form of two different
phishing emails. The first email had a Zip archive attachment that claimed to
be a customer complaint and targeted businesses, the second had a malicious
link with a message regarding a problem clearing a check and targeted the
general public. Once clicked, Cryptolocker scrambles and locks files on the
computer and demands the owner make a payment in exchange for the key to
unlock and decrypt the files. 


## Current Phishing Threats

Phishers start adopting HTTPS more and more often on their sites starting in
2017. When you click on a phishing link, the sites they lead to—that try to
trick you into entering credentials, personal information, and so
on—implement web encryption at least 24 percent of the time. The green
padlock gives consumers a false sense of security. All it really tells
us is that traffic between the server and the user''s browser is
encrypted and protected against interception. 

A phishing campaign targeting organizations associated with the 2018
Winter Olympics is the first to use a PowerShell tool called
Invoke-PSImage that allows attackers to hide malicious scripts in the
pixels of otherwise benign-looking image files, and later execute them
directly from memory. Hiding the script inside an image file not only
helps it evade detection, executing it directly from memory is a
fileless technique that in most cases won''t get picked up by
traditional antivirus solutions. This is another troubling example of
how attacks are staying under the radar and evolving away from using
malicious .exe''s.

Conversation hijacking, a style of phishing email in which hackers
insert themselves into email conversations between parties known to
and trusted by one another, starts being used. Once in, hackers
exploit that trust to trick users to launch an executable. Variations
of this scheme are very difficult to detect and beat. 

In 2018, researchers discover a new generation of phishing kit readily
available on the Dark Web to cybercriminals. The kit enables anyone
who downloads it to easily craft convincing emails and redirect sites
that closely mimic branding elements of well-known firms and launch a
phishing campaign that collects the personal and financial information
of unsuspecting targets.

Gift card phishing campaigns that started in 2018 continued to evolve
in 2019. The bad guys got much better at establishing a credible
pretext (ie "incentives"), explicitly request confidentiality, they
got very greedy -- up to $4000 per request in gift cards, and they are
incentivizing the entire scheme by offering the recipient a bribe
("take one for yourself"), a ploy which, in a way, seeks to turn the
target into a co-conspirator.

A devilishly ingenious vishing scam plays on your user’s familiarity
with business voicemail, seeking to compromise online credentials
without raising concerns. Many organizations have their PBX system
integrated with email; miss a call and the recording pops into your
Inbox. Nothing inappropriate with this scenario. But, that’s exactly
what scammers are hoping you’ll think when your users receive their
email pretending to be an internal voicemail notification. Using
subjects such as Voice:Message, Voice Delivery Report, or PBX Message,
these emails contain another email as the attachment (to avoid
detection by email scanning security solutions) containing the actual
phish.

Vendor email compromise emerged as a new type of attack in 2019, which
is a variety of business email compromise (BEC) attack (or CEO Fraud).
Cybercriminals gain access to email accounts at a company in their
supply chain, then use the accounts to target that company’s
customers. The attacks focus on organizations with global supply
chains and attempt to trick a supplier’s customers into paying fake
invoices. Vendor email compromise impacted at least 500 organizations
globally in 2019.

According to Microsoft, some of the innovative ways they’ve seen
phishing attacks evolve so far in 2020 include:  Pointing email links
to fake Google search results that point to attacker-controlled
malware-laden websites, pointing email links to non-existent pages on
an attacker-controlled website so that a custom 404 page is presented
that can be used to mimic logon pages for legitimate sites, spoofing
company-specific Office 365 sign-in pages to look so realistic that
users would think it''s the real thing. 

In early 2020, phishing emails related to the C-19 pandemic start
running rampant. Popular themes include stimulus checks, fake CDC
warnings, working from home, Netflix scams, fines for coming out of
quarantine and many more. Every country in the world has been affected
by these types of attacks.

These advancements in the way attackers are thinking about phishing to
facilitate endpoint infection or credential theft make it absolutely
necessary for organizations to no longer consider their security
solutions as their only line of defense. Users must become the last
line of defense, playing a role in organizational security.',
'author'
);

insert into article_tags
values 
  ('736970db-1365-4eb0-8ffb-acf1063c1209', '517038c5-7d82-453a-a35c-f9d0b4c4787f'),
  ('736970db-1365-4eb0-8ffb-acf1063c1209', 'f441f6b8-de76-44af-90f1-6e6ba92f50bc'),
  ('736970db-1365-4eb0-8ffb-acf1063c1209', '68fac2e4-bb37-4a9b-91af-6334f6887482'),
  ('7ba11869-7da2-461b-a5fe-5ace392cc3e1', '517038c5-7d82-453a-a35c-f9d0b4c4787f'),
  ('7ba11869-7da2-461b-a5fe-5ace392cc3e1', 'b4945aa4-b2ec-4d5e-91aa-bc2413177265'),
  ('7ba11869-7da2-461b-a5fe-5ace392cc3e1', 'b9112b9f-0ef2-40f5-8149-f3f0b03638ec'),
  ('7ba11869-7da2-461b-a5fe-5ace392cc3e1', '68fac2e4-bb37-4a9b-91af-6334f6887482');
