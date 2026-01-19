# shellcheck shell=bash
######################################################################
#<
#
# Function: p6df::modules::oracle::cli::build()
#
#  Environment:	 P6_DFZ_SRC_DIR
#>
######################################################################
p6df::modules::oracle::cli::build() {

  p6_run_dir "$P6_DFZ_SRC_DIR/oracle/docker-images/OracleDatabase/SingleInstance/dockerfiles/18.4.0" p6df::modules::oracle::build::download
  p6_run_dir "$P6_DFZ_SRC_DIR/oracle/docker-images/OracleDatabase/SingleInstance/dockerfiles" p6df::modules::oracle::build::docker

  p6_return_void
}

######################################################################
#<
#
# Function: p6df::modules::oracle::cli::build::download()
#
#>
######################################################################
p6df::modules::oracle::cli::build::download() {

  curl -sL -O https://p6df-assets.s3.us-east-2.amazonaws.com/oracle-database-xe-18c-1.0-1.x86_64.rpm

  p6_return_void
}
