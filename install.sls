#
# Install Git
#

# Install python software properties
local_git_python_software_properties_install:
  pkg:
    - installed
    - name: python-software-properties

# Add git PPA to always install the latest stable git
local_git_ppa:
  pkgrepo:
    - managed
    - ppa: ppa:git-core/ppa

# Install Git
local_git_install:
  pkg:
    - installed
    - name: git
    - require:
      - pkgrepo: local_git_ppa

#
# Other handy git addons
#

local_git_rubygems_install:
  pkg:
    - installed
    - name: rubygems

# Gitup
'git-up':
  gem:
    - installed
    - require:
      - pkg: local_git_install
      - pkg: local_git_rubygems_install

# Hub
'hub':
  gem:
    - installed
    - require:
      - pkg: local_git_install
      - pkg: local_git_rubygems_install
