#!/bin/bash


export BENCH_BASE=$KITWB/bench
export BENCH_NODE_VERSION=
export BENCH_NODE_MODULES=$BENCH_BASE/node_modules

export BENCH_LERNA_PACKAGES=$BENCH_BASE/packages

export BENCH_PYTHON_VERSION=3.6.2
export BENCH_VENV=$BENCH_BASE/venv

export BENCH_LOG=$BENCH_BASE/setup-logs

oneline_description_of_kd_bench() {
  echo "JupyterLab Workbench"
}
export -f oneline_description_of_kd_bench


describe_environment_kd_bench_help() {
printf "`cat << EOF
${BLUE}kd describe bench${NC}

EOF
`\n"
}
export -f describe_environment_kd_bench_help

describe_environment_kd_bench() {
  report_heading "Workbench Build Environment"

  report_vars "Settings" \
      BENCH_BASE\
      BENCH_VENV\
      BENCH_PYTHON_VERSION

  report_python_env $BENCH_VENV
  true
}
export -f describe_environment_kd_bench

vet_environment_kd_bench() {
  echo "Component[bench]:vet"
  check_basic_python_ability
}
export -f vet_environment_kd_bench
