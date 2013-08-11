#!stateconf yaml . jinja

#
# git.install
#
# Install Git, Git-Flow, Git-Up & Hub
#

# Dependencies

.python-software-properties:
  pkg:
    - installed

.rubygems:
  pkg:
    - installed

.git-ppa:
  pkgrepo:
    - managed
    - ppa: git-core/ppa
    - require:
      - pkg: .python-software-properties

# Packages

.git:
  pkg:
    - installed
    - require:
      - pkgrepo: .git-ppa

.git-flow:
  pkg:
    - installed
    - require:
      - pkg: .git

# Gems

.git-up:
  gem:
    - installed
    - require:
      - pkg: .git
      - pkg: .rubygems

.hub:
  gem:
    - installed
    - require:
      - pkg: .git
      - pkg: .rubygems
