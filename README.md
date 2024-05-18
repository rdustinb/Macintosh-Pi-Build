# Macintosh-Pi-Build
Where the software lives, and other data, for the miniature Macintosh running on a Raspberry Pi

## Setup
The setup of the Raspberry Pi can be done with the included ansible playbooks. Call the top-level setup.yml playbook and
the other supporting playbooks will be called as needed.

```bash
ansible-playbook -i hosts.ini -l build -u <username of Pi> -K setup/setup.yml
```
