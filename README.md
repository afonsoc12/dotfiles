# dotfiles

Carefully crafted set of dotfiles for macOS using a git bare repository.

## Features
- XDG Base Directory Specification compliant
- Avoids `~/.dotfiles` in `$HOME` as much as possible
- Ansible installation (tasks can be imported to other playbooks)

## Installation (on a brand-new system)

dotfiles can be installed running the `dotfiles.yml` [Ansible](https://www.ansible.com/) playbook. The tasks defined in `tasks/` are also used as part of the [Ready, Set, Develop](afonsoc12/ready-set-code) project, which is a collection of automation scripts to streamline setting up new machines.

The only pre-requisite is Ansible installed on the host machine, by following [these instructions](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html).

1. Clone repository into location

    ```bash
    # Use https instead of ssh, since SSH might not be setup on the system
    git clone --bare https://github.com/afonsoc12/dotfiles.git $HOME/.config/dotfiles
    ```

2. Define an alias for `git` command. `dotfiles` can be used for all git-related operations.

    ```bash
    # Don't forget to source shell after this command. This alias will be installed in .zshrc
    alias dotfiles="/usr/bin/git --git-dir=$HOME/.config/dotfiles --work-tree=$HOME/.config"
    ```

3. Checkout branch (actually constructs the files in the system)

    ```bash
    dotfiles checkout
    ```

4. Run installation tasks

    ```bash
    ansible-playbook $HOME/.config/dotfiles.yml
    ```

## Usage

Everything behaves as a normal git repository, but instead of using `git`, we'll use `dotfiles`. Also, all changes must happen inside `$XDG_CONFIG_HOME`, which by default is `~/.config`.

```bash
dotfiles status
dotfiles add ~/.config/.zshrc
dotfiles commit -m "Add .zshrc"
dotfiles push
```

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
