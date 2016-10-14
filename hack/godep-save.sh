#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

source "$(dirname "${BASH_SOURCE}")/lib/init.sh"

REQUIRED_BINS=(
  "github.com/ugorji/go/codec/codecgen"
  "k8s.io/kubernetes/cmd/libs/go2idl/client-gen"
  "./..."
)

godep save "${REQUIRED_BINS[@]}"