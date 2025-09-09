+++
title = "IAM Management for the Small Guys"
date = "2025-02-22T09:00:00-07:00"
draft = false
tags = ["iam", "security", "small-business", "access-management"]
+++

### Who Has the Keys to Your Kingdom?

An employee quits on a Friday. On Monday, you find out your main client list has been deleted from the company Dropbox. Who did it? You have no idea, because five different people all use the same `admin@` login.

This isn't a hypothetical. For small businesses, this kind of chaos is frighteningly common. We often operate on trust, giving everyone the keys to everything because it’s "easier." This isn't just lazy; it's a massive, self-inflicted wound waiting to happen.

Identity and Access Management (IAM) sounds like a fancy corporate term, but it boils down to one simple question: **Who can do what?** Getting it right is not optional.

Here’s the bare-minimum, no-excuses approach:

1. **One Person, One Login. Period.** Shared accounts for email, cloud storage, or critical software are a disaster. When something breaks or goes missing, you have zero accountability. It stops today. Every user gets their own unique login. No exceptions.
    
2. **Stop Making Everyone an Admin.** The new hire in marketing does not need the ability to delete the entire accounting folder. This isn't about trust; it's about limiting the "blast radius" of a mistake or a hacked account. Grant people the _minimum_ access they need to do their job. If they need more, they can ask.
    
3. **Have an Exit Plan.** When someone leaves your company, your first move—before the farewell lunch—should be to execute an offboarding checklist. Revoke their access to _everything_: email, shared drives, software licenses, Slack. Immediately. A disgruntled ex-employee with the keys is one of the biggest threats to your business.
    

This isn't about creating corporate bureaucracy. It's about control. It’s about knowing who is behind every action and ensuring that a single compromised password or a bitter employee can't burn your business to the ground.