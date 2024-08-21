#!/usr/bin/env osh

# Run development environment out of build directory, using host-tools.sh if
# available.

cd build/system-image-"$1" &&
  PATH="$(pwd)/build/host:$PATH" ./dev-environment.sh
