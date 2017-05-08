Gluster
=========

Rol de instalación de Guster, que configura replicación entre todos los host
proporcionados.

Requirements
------------

Actualmente solo funciona con derivados de RedHat, pero está pensado para
añadir soporte a más plataformas.

Role Variables
--------------

La utilización de las variables está descrita junto a su declaración.

Dependencies
------------

None

Example Playbook
----------------

Los host tienen que estar en un grupo llamado gluster.

- hosts: gluster
  remote_user: ansible
  become: yes
  roles:
    - role: gluster

License
-------

MIT

Author Information
------------------

Diego Prieto
https://github.com/Diego-PG
