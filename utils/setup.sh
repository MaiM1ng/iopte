#!/bin/bash

./set_git.sh
./set_packageg.sh

./requirements/install_ddio.sh
./requirements/install_mlc.sh
./requirements/install_ofed.sh
./requirements/install_frameGraph.sh
./requirements/install_netperf.sh
./requirements/install_pcm.sh
./requirements/install_iperf3.sh
./requirements/install_nstack.sh
./requirements/install_rdt.sh
