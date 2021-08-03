#! /bin/bash

##
# 循环下载文件，目的是增加网络负载
# 使用 ./main.sh 300k 5 http://localhost:8080/file.txt
# 其中300k是下载速度上限，作为参数传递给wget --limit-rate
# 5是sleep时间，单位是秒，如果为0则不sleep，一直循环下载
# http://localhost:8080/file.txt 是下载文件的url地址
##
# set -ex

# 默认参数
limit_rate=500k
file_url=k8s-master:6000/netload.txt
interval=1 #默认秒
file_name=netload

# 使用信息
usage(){
    cat <<-EOF
    Usage: ./main.sh 300k 5 http://localhost:8080/file.txt
    Flags:
        300k                                下载速度上限，作为参数传递给wget --limit-rate
        5                                   是sleep时间，单位是秒，如果为0则不sleep，一直循环下载
        http://localhost:8080/file.txt      下载文件的url地址
    Node:
        必须按顺序指定3个参数，且参数类型要符合规范
EOF
}

# 主执行逻辑
main() {
    for (( ; ; ))
    do
        # wget --no-proxy --limit-rate=$limit_rate -O $file_name $file_url
        wget -q --limit-rate=$limit_rate -O $file_name $file_url
        rm $file_name
        if (($interval >= 1));then
            sleep $interval
        fi
    done
}

# 参数
if test $# -eq 3;then
    limit_rate=$1
    interval=$2
    file_url=$3
    main
else
    usage
    exit
fi