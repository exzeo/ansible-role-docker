Ansible Role Docker
=========

Installs Docker and Docker Compose on Debian/Ubuntu servers. 

Docker Release Notes
Releases: https://docs.docker.com/engine/release-notes/

Docker-Compose Release Notes
Releases: https://docs.docker.com/compose/release-notes/


Note: This installs Docker Latest. Only Docker-Compose version is configurable. 

Role Variables
--------------

```
# Toggle to install docker compose
docker_install_compose: false

# Version of Docker Compose
docker_compose_version: ""

# Toggling this will uninstall from the server
uninstall: false

# Toggling this will add the current user to docker users
docker_add_current_user: true

# Specify user to add docker group to, will read from SUDO_USER if not provided
docker_user: ""
```

Example Playbooks
----------------

Minimal:
```
- name: Install Docker
  hosts: all
  roles:
    - role: exzeo.docker
```

Specific Version:
```
- name: Install Docker
  hosts: all
  roles:
    - role: exzeo.docker
```

Uninstall:
```
- name: Install Docker
  hosts: all
  roles:
    - role: exzeo.docker
      vars:
        uninstall: true
```