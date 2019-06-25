@echo off

:: ---- FDS and smokeview version ----

set fds_version=FDS6.7.1R407
set smv_version=SMV6.7.6R197
set fds_versionbase=6.7.1R407
set smv_versionbase=6.7.6R197
set fds_edition=FDS6
set fds_debug=0

:: ---- FDS and smokeview revision ----

set smv_revision=unknown
set fds_revision=unknown
if exist %userprofile%\.bundle\smv_revision.txt (
  set /p smv_revision=<%userprofile%\.bundle\smv_revision.txt
)
if exist %userprofile%\.bundle\fds_revision.txt (
  set /p fds_revision=<%userprofile%\.bundle\fds_revision.txt
)

:: ---- log entry date ----

set smvlogdate="10-Apr-2019"

:: ---- repo locations ----

::*** PC
set svn_root=%userprofile%\FireModels_fork
set fdswikirepo=%svn_root%\wikis
set svn_drive=c:

::*** Linux/OSX
set bot_home=/home4/gforney
set linux_svn_root=FireModels_fork
set compiler_dir=fire-notes/INSTALL/LINUX/INTEL_19u1
set misc_dir=fire-notes/INSTALL/LIBS/LINUX/LIB64

:: ---- MPI library locations ----

:: set to INTEL if using Intel MPI library
set linux_mpi_version=INTEL
set linux_intel_mpi_version=19u4

set osx_mpi_version=3.1.2
::set osx_mpi_version=1.8.4

:: ---- INTEL compiler version ----

set INTELVERSION=INTEL19U4
set linux_comp_version=19u4
set osx_comp_version=19u4

:: ---- Guide locations ----

set GUIDE_DIR=.bundle/pubs

:: ---- openmpi library locations ----

set OPENMPI_DIR=.bundle/OPENMPI

:: ---- bundle locations ----

::set BUNDLE_DIR=.bundle/BUNDLE

:: ---- bot locations ----

set firebotrepo=/home2/smokevis2/firebot/FireModels_clone
set firebothome=/home2/smokevis2/firebot

set smokebotrepo=/home2/smokevis2/smokebot/FireModels_central
set smokebothome=/home2/smokevis2/smokebot

:: plink options
set plink_options=-no-antispoof

:: ---- hostnames ----

::*** linux
set linux_hostname=burn.el.nist.gov
::set linux_hostname=192.168.1.14
set linux_username=%username%
set linux_logon=%linux_username%@%linux_hostname%

::*** OSX
set osx_hostname=floga.el.nist.gov
::set osx_hostname=192.168.1.13
set osx_username=%username%
set osx_logon=%osx_username%@%osx_hostname%
