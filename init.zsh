# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::oracle::deps()
#
#>
######################################################################
p6df::modules::oracle::deps() {
  ModuleDeps=(
    p6m7g8-dotfiles/p6df-docker
    oracle/docker-images
  )
}

######################################################################
#<
#
# Function: p6df::modules::oracle::external::brew()
#
#>
######################################################################
p6df::modules::oracle::external::brew() {

  p6df::modules::homebrew::cli::brew::install InstantClientTap/instantclient/instantclient-sqlplus
  p6df::modules::homebrew::cli::brew::install InstantClientTap/instantclient/instantclient-tools

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::oracle::init(_module, dir)
#
#  Args:
#	_module -
#	dir -
#
#>
######################################################################
p6df::modules::oracle::init() {
  local _module="$1"
  local dir="$2"

  p6_bootstrap "$dir"

  p6_return_void
}
