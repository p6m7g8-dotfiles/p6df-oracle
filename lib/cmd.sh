# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::oracle::cmd::sql(...)
#
#  Args:
#	... - 
#
#>
######################################################################
p6df::modules::oracle::cmd::sql() {
  shift 0

  sqlplus sys/testing12345@//localhost:11521/XE as sysdba "$@"

  p6_return_void
}
