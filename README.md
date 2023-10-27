# dotfiles

[![CI](https://github.com/afonsoc12/dotfiles/actions/workflows/ci.yml/badge.svg)](https://github.com/afonsoc12/dotfiles/actions/workflows/ci.yml)

Carefully crafted set of dotfiles for macOS using a git bare repository.

## Features
- [XDG Base Directory Specification](https://wiki.archlinux.org/title/XDG_Base_Directory) compliant
- Avoids `~/.dotfiles` in `$HOME` as much as possible
- Ansible installation (tasks can be imported to other playbooks)

## Installation (on a brand-new system)

dotfiles can be installed running the `dotfiles.yml` [Ansible](https://www.ansible.com/) playbook. The tasks defined in `tasks/` are also used as part of the [Ready, Set, Develop](afonsoc12/ready-set-code) project, which is a collection of automation scripts to streamline setting up new machines.

The only pre-requisite Ansible installed on the host machine, by following [these instructions](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

1. Clone repository into location

    ```bash
    # Use https instead of ssh, since SSH might not be setup on the system
    git clone https://github.com/afonsoc12/dotfiles.git
    ```

2. Run installation tasks

    ```bash
    cd dotfiles
    ansible-playbook $HOME/.config/dotfiles.yml
    ```

## Usage

By default, when executing the playbook `dotfiles.yml`, it deploys dotfiles by establishing symbolic links from the repository. To use copy instead, simply append the argument `-e '{"dotfiles_use_links": true}'` to the `ansible-playbook` command.

The core idea behind the instalation is to avoid adding dotfiles in the home folder as best as possible. However, I'm aware that in some circumstances this is not possible, which explains why some dotfiles are in the root of the repository.

The primary objective behind this installation process is to minimize adding dotfiles into the user's home folder as best as possible. However, some applications do not allow other locations, which is why some dotfiles reside at the root of the repository.

Rule of thumb is: if file is inside a folder on this repository, the folder will be linked/copy to `~/.config`, otherwise, if in the root, it will be copied to `~/`. This approach is designed to maintain a clutter-free home folder and keep dotfiles organized.

## Development

### Installation

1. Create virtualenv

    ```shell
    pyenv virtualenv dotfiles
    pyenv acticate dotfiles
    # or

    python -m venv venv
    source venv/bin/activate
    ```

2. Install requirements.txt file

    ```shell
    pip install -r requirements.txt
    ```

### Linting

Two linters setup: [yamllint](https://yamllint.readthedocs.io/en/stable/) and [ansible-lint](https://ansible.readthedocs.io/projects/lint). To run them:

```shell
yamllint .
ansible-lint
```
