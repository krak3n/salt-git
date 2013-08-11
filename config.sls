#!stateconf yaml . jinja

#
# Git Global Configuration
#

.gitconfig:
  file:
    - managed
    - name: /home/vagrant/.gitconfig
    - user: vagrant
    - group: vagrant
    - mode: 644
    - source: salt://local_git/files/.gitconfig
