+++
title = 'Domain Squatting, BEC, Fake Invoices...oh my'
date = "2024-05-12T09:12:00-07:00"
draft = false
tags = ["cybersecurity", "phishing", "domain-security"]
+++

About a year ago I had a friend call me with a minor concern. They worked for a
reputable general contractor that worked with some very high-end clients.
Incredibly wealthy is what that means. They were wondering how an email could
appear to have come from one of the managers of the company requesting payment
from a client. This piqued my interest. Honestly I had a hard time wrapping my
head around the circumstances, as the timeline was not explained well. I will
attempt to do a better job explaining it below:

![The email in question](./theEmail.png)

So here is what I figured happened:

A bad actor secured a domain that was the same as the innocent contractor. From
here, they were able to target adjacent contractors for current jobs. They
happened across a whale and proceeded to send an email requesting payment in an
odd fashion from the money manager of a wealthy client. The astute people at
that organization were able to spot something being off and responded
accordingly; no payment was sent.

This is a common occurrence and we do what we can to mitigate and react to it.
The outcome was a known quantity, to a certain extent, but I had questions. This
felt incredibly targeted. How did an attacker know to pull that specific domain? How did the attacker know what clients were the best targets? Why was only one client in particular targeted? I was not in a position to further investigate the email traffic and try to find sources or IOC's in any capacity, so that may be a story for another day. 

Perhaps the most prudent and concerning outcome from this attack was the response. The contractor who had their domain typosquatted by the bad actor has an MSP they have worked with for years. Their solution to this problem was to park the customer behind a barracuda network device in an effort to "save hunndreds of dollars in purchasing adjacently named domains". This reeks of incompetence and I was honestly shocked. Simple, close to free solutions exist, right there attached to their domain. SPF, DKIM and DMARC help dramatically here. While you cannot stop people from buying domains, you and your friendly contacts can all use the aforementioned technologies to ensure your contact is trusted and secured. 

- **SPF (Sender Policy Framework):** This is a free DNS record that lists all the IP addresses and servers authorized to send email on behalf of your domain. It's like a bouncer's guest list; if the sending server isn't on the list, it's suspicious.
- **DKIM (DomainKeys Identified Mail):** This is a free DNS record that adds a unique digital signature to every email you send. The receiving server checks this signature to ensure the email hasn't been tampered with in transit. It's like an unbroken wax seal on a letter.
- **DMARC (Domain-based Message Authentication, Reporting & Conformance):** This is the most critical piece. DMARC is a free DNS record that tells receiving email servers what to do if an email _claims_ to be from you but fails the SPF or DKIM checks.
	- **Policy:** You can set the policy to `p=none` (just monitor), `p=quarantine` (send to spam), or `p=reject` (block the email entirely).
	- **Reporting:** DMARC sends you reports on who is sending email from your domain, allowing you to see if you're being spoofed.

If both senders and receivers implemented these measures, the majority of attacks like this wouldn't even hit the inbox. I look forward to being able to do some more digging and analysis on their systems to better understand what really transpired...this was an interesting case.