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

1. Explain and log in to jump.  ssh siduserXXX@jump.mysidlabs.com
1. 