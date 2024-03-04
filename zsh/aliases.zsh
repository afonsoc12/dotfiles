# General
alias cdd="cd ~/Desktop"
alias cdh="cd ~"
alias v="ls -alh"

# Kubernetes aliases
alias k="kubectl"
export do="--dry-run=client -oyaml"
export now="--grace-period=0 --force"
alias kn="kubectl config set-context --current --namespace"
alias ka="kubectl apply -f"
alias kc="kubectl create"
alias kr="kubectl run"
alias kg="kubectl get"
alias kd="kubectl describe"
alias kdebug="kubectl run --rm -i --restart=Never"
alias kubeseal="kubeseal --controller-name=sealed-secrets --controller-namespace=utils"
