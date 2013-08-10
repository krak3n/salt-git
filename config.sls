#
# Git Global Configuration
#

local_git_config:
  file:
    - managed
    - name: /home/vagrant/.gitconfig
    - user: vagrant
    - group: vagrant
    - mode: 755
    - source: salt://local_git/files/.gitconfig
    - require:
      - pkg: local_git_install
