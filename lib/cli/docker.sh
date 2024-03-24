# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::oracle::cli::docker::build()
#
#>
######################################################################
p6df::modules::oracle::cli::docker::build() {

  ./buildDockerImage.sh -x -v 18.4.0

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::oracle::cli::docker::run()
#
#  Environment:	 ACCEPT_EULA
#>
######################################################################
p6df::modules::oracle::cli::docker::run() {

  local now_eps=$(p6_dt_now_epoch_seconds)

  docker run -d --name oracle-${now_eps} -e 'ACCEPT_EULA=Y' -e 'ORACLE_PWD=$ORACLE_PWD' -p 11521:11521 oracle/database:18.4.0-xe

  p6_return_void
}
