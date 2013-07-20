#
# Install Git
#

# Install python software properties
chris_git_python_software_properties_install:
  pkg:
    - installed
    - name: python-software-properties

# Add git PPA to always install the latest stable git
chris_git_ppa:
  pkgrepo:
    - managed
    - ppa: ppa:git-core/ppa

# Install Git
chris_git_install:
  pkg:
    - installed
    - name: git
    - require:
      - pkgrepo: chris_git_ppa

#
# Other handy git addons
#

chris_git_rubygems_install:
  pkg:
    - installed
    - name: rubygems

# Gitup
'git-up':
  gem:
    - installed
    - require:
      - pkg: chris_git_install
      - pkg: chris_git_rubygems_install

# Hub
'hub':
  gem:
    - installed
    - require:
      - pkg: chris_git_install
      - pkg: chris_git_rubygems_install
