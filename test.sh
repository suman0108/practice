#!/bin/bash

output=$(python prepare_new_deployment.py)
environment=$(echo "$output" | grep -oP "ENVironment: \[\K[^\]]+" | awk '{print $1}')
deployment_context=$(echo "$output" | grep -oP "DEPLOYMENT_CONTEXT: \[\K[^\]]+" | awk '{print $1}')
model_names=$(echo "$output" | grep -oP "MODEL_NAMES: \[\K[^\]]+" | awk '{print $1}')
model_versions=$(echo "$output" | grep -oP "MODEL_VERSIONS: \[\K[^\]]+" | awk '{print $1}')
system_uids=$(echo "$output" | grep -oP "SYSTEM_UIDS: \[\K[^\]]+" | awk '{print $1}')
testing_times=$(echo "$output" | grep -oP "TESTING_TIMES: \[\K[^\]]+" | awk '{print $1}')
echo $deployment_context