#!/bin/bash
# install kernel

print_help() {
printf "`cat << EOF
${BLUE}kd credcom_kernel kernel install${NC}

Create install

EOF
`\n"
}

run() (
  kd_install_node_kernel dsr_kernel $DSR_BASE
)
