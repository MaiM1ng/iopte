#!/bin/bash

set -e

# 获取当前脚本所在目录（绝对路径）
DIR="$(cd "$(dirname "$0")" && pwd)"

# 根目录：你的 iopte 根目录
ROOT_DIR="$(realpath "$DIR/../..")"

# 调用 utils 脚本
"$DIR/set_git.sh"
"$DIR/set_packages.sh"

# 调用 requirements 下的安装脚本
REQUIREMENTS_DIR="$DIR/requirements"
"$REQUIREMENTS_DIR/install_ddio.sh"
"$REQUIREMENTS_DIR/install_mlc.sh"
"$REQUIREMENTS_DIR/install_frameGraph.sh"
"$REQUIREMENTS_DIR/install_netperf.sh"
"$REQUIREMENTS_DIR/install_pcm.sh"
"$REQUIREMENTS_DIR/install_iperf3.sh"
"$REQUIREMENTS_DIR/install_nstack.sh"
"$REQUIREMENTS_DIR/install_rdt.sh"
