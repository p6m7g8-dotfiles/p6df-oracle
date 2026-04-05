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
# Function: p6df::modules::oracle::external::brews()
#
#>
######################################################################
p6df::modules::oracle::external::brews() {

  p6df::core::homebrew::cli::brew::install InstantClientTap/instantclient/instantclient-sqlplus
  p6df::core::homebrew::cli::brew::install InstantClientTap/instantclient/instantclient-tools

  p6_return_void
}

######################################################################
#<
#
# Function: words oracle = p6df::modules::oracle::profile::mod()
#
#  Returns:
#	words - oracle
#
#  Environment:	 ORACLE_HOME
#>
######################################################################
p6df::modules::oracle::profile::mod() {

  p6_return_words 'oracle' '$ORACLE_HOME'
}
