#!/bin/bash
# rebuild and run local electron app

print_help() {
printf "`cat << EOF
${BLUE}kd wb build${NC}


EOF
`\n"
}

run() {
  cd $KWB_BASE_DIR
  $KWB_YARN build
  kd wb kernels
}
