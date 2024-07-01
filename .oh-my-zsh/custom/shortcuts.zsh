weather() {
    printf '\e[8;41;125t'
    sleep 0.1
    curl "http://wttr.in/$1"
}

ssha() {
    ssh -o ServerAliveInterval=60 $1
}

gitstat() {
    git log --pretty=tformat: --numstat | gawk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s removed lines: %s total lines: %s\n", add, subs, loc }' -
}

gcp_gcr() {
    gcloud auth configure-docker
}
k8s_local() {
    export KUBECONFIG=/etc/rancher/k3s/k3s.yaml
}

initrm() {
    cp -r ~/Personal/matf/rm-ispit/feb-materijali/* .
    rm task1/*.class
    javac task1/*
}


alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias adb=/home/luka/Android/Sdk/platform-tools/adb
alias AS=/opt/android-studio/bin/studio.sh
alias IJ=/opt/idea/bin/idea.sh
alias CL=/opt/clion/bin/clion.sh
alias PY=/opt/pycharm/bin/pycharm.sh
alias RH=rhythmbox
alias FF=firefox
alias FD=/opt/firefox-dev/firefox
alias FW=focuswriter
alias W=weather
alias WP="weather Pancevo"
alias WB="weather Belgrade"
alias FZ=filezilla
alias lsize="du -H --max-depth=1 . | sort -nr"
alias FFP="firefox -P Personal"
alias GL=/opt/goland/bin/goland.sh
alias WS=/opt/webstorm/bin/webstorm.sh
alias RI=/opt/rider/bin/rider.sh

alias KL="k8s_local"
alias GD_GCR="gcp_dev && gcp_gcr"
alias GD_K="gcp_dev && gcp_dev_k8s"
alias GD_BH="gcp_dev && gcp_dev_bh"
alias GP_GCR="gcp_prod && gcp_gcr"
alias GP_K="gcp_prod && gcp_prod_k8s"
alias GP_BH="gcp_prod && gcp_prod_bh"

alias wrangler="node /home/luka/node_modules/wrangler/bin/wrangler.js"

