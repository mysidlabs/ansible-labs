## This guide is intended as a cheat sheet for the presenter to drive currated labs.  These *are not* step-by-step instructions or intended to be student-facing in any way.  Please review before delivering this content!  If you have any questions, contact Steve Taranto or Matt Godby.

## Prerequisites

1. Each student should have --
    1. their own GitHub account.
    1. access to a terminal (shell prompt, Putty, etc) from their laptop.
    1. an assigned siduserXXX id. 

## Overview

1. `http://github.com/mysidlabs/ansible-labs` has the Ansible artifacts for all three labs.  The student will not commit back to this repo.  
    1. For Lab-1, there are no changes needed.
    1. For Lab-2 & Lab-3, the student will fork the repo and use that personal repo, where they can make changes if they like.

### Lab-1

Using the Ansible CLI, create an EC2 VM, configure it with a user account, use that account to access the VM and then remove the VM.  This lab will explore --

1. The basic constructs of Ansible playbooks.
1. Static inventory concepts.
1. Executing and troubleshooting playbooks using Ansible CLI tooling.
    1. Including the differences between targetting an API and targetting a host.
1. Inspecting the results of a playbook run. 

### Lab-2

Using Ansible Tower, create, configure and then remove an multi-tier application stack consisting of three EC2 VM's.  This labe will explore --

1. The basic constructs of Ansible Tower and more complex Ansible constructs such as roles and dynamic/smart inventories.
1. Simple GitHub concepts.
1. Executing and troubleshooting playbooks using Ansible Tower.
1. Using facts and playbook results to configure hosts in the stack.

### Lab-3

Ansible Tower Workflows will be used to replicate Lab-2.

# Lab-1

1. Explain and log in to jump.  `ssh siduserXXX@jump.mysidlabs.com`.
1. `lab ansible`.  This will start up a toolkit and clone the GitHub repo needed for the lab.  The entire lab will be run from `~/dev/ansible/lab1`.
1. Take a tour through the contents of the directory.
    1. `group_vars/all.yaml` - explain what this is.  Touch on the rich functionality Ansible provides for runtime variable management.
    1. `create.yaml` - Note `hosts: localhost` since this is an API-only playbook.  Also discuss the creation of `inv.txt` and how this an anti-pattern, but being used for convenience of lab.
    1. `configure.yaml` 
    1. `clean.yaml` - similar to `create.yaml`.  Uses the ec2 module to remove the instance.  Also cleans up the `inv.txt`.
1. Run `ansible-playbook create.yaml`.
    1. Discuss `hosts: all`, `gather_facts: true`, `package`.
1. Run `ansible-playbook -i inv.txt configure.yaml`.
    1. Introduce idempotency by running playbook twice.
    1. `./login` and use this as discussion around SSH key mgmt.
1. Run `ansible-playbook clean.yaml`.

# Lab-2

1. Explain and login to GitHub.
    1. If user does not have GitHub account, they can use `mysidalbs/ansible-labs` but read-only.
1. Fork `mysidlabs/ansible-labs`.
    1. Note that this will be used shortly by a Project.
1. Explain and login to Tower.
    1. Explain naming convention we'd like them to use.  Preference everything with `siduserXXX`.
    1. Explain "answer artifacts are preferences with `zzz`.
1. Lead a tour of Tower.  Finish with Job, Template, Inventory and Project in that order.
1. Create a project referencing forked repo.
1. Create inventory & source.
1. Create and execute `lab2-create` template.
1. Take a tour through the created inventories.
    1. Show the updated hosts when the source is refreshed
1. Create and execute `lab2-configure` template.
    1. Show how jobs are spread across the Instance Group.
1. Demonstrate that the stack deployment worked but hitting the public IP of lb.
    1. Show different methods for finding that IP.
1. Create and execute `lab2-clean` template.
    1. Demonstrate that the inventory still has hosts until source is refreshed.

# Lab-3

1. TODO - Do all the above in a workflow.
1. Demonstrate running the workflow against OCP Instance Group.
