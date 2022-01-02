::#! 2> /dev/null                                   #
@ 2>/dev/null # 2>nul & echo off & goto BOF         #
if [ -z ${SIREUM_HOME} ]; then                      #
  echo "Please set SIREUM_HOME env var"             #
  exit -1                                           #
fi                                                  #
exec ${SIREUM_HOME}/bin/sireum slang run "$0" "$@"  #
:BOF
setlocal
if not defined SIREUM_HOME (
  echo Please set SIREUM_HOME env var
  exit /B -1
)
%SIREUM_HOME%\bin\sireum.bat slang run "%0" %*
exit /B %errorlevel%
::!#
// #Sireum

import org.sireum._
import org.sireum.project.ProjectUtil._
import org.sireum.project.{Module, Project, PublishInfo, Target}

val homeDir = Os.slashDir.up.canon

val project = Project.empty + Module(
  id = "automaton",
  basePath = s"$homeDir",
  subPathOpt = Some("src"),
  deps = ISZ(),
  targets = ISZ(Target.Jvm),
  ivyDeps = ISZ(),
  sources = ISZ("."),
  resources = ISZ(),
  testSources = ISZ(),
  testResources = ISZ(),
  publishInfoOpt = Some(PublishInfo(
    description = "This package contains a full DFA/NFA implementation with Unicode alphabet and support for all standard regular expression operations.",
    url = "https://github.com/sireum/automaton",
    licenses = ISZ(
      PublishInfo.License(
        name = "BSD3",
        url = "https://github.com/sireum/automaton/blob/master/COPYING",
        distribution = "repo"
      )
    ),
    developers = ISZ(
      PublishInfo.Developer(id = "amoeller", name = "Anders Møller")
    ),
  ))
)

projectCli(Os.cliArgs, project)
