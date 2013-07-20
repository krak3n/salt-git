#
# Git Global Configuration
#

chris_git_config:
  file:
    - managed
    - name: /home/vagrant/.gitconfig
    - user: vagrant
    - group: vagrant
    - mode: 755
    - source: salt://chris_git/files/.gitconfig
    - require:
      - pkg: chris_git_install
