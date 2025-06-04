{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "koji-tool"; version = "1.3"; };
      license = "BSD-3-Clause";
      copyright = "2021-2025  Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/koji-tool";
      url = "";
      synopsis = "Koji CLI tool for querying tasks and installing builds";
      description = "koji-tool is a CLI interface to Koji with commands to query\nbuilds, tasks, install rpms, and track buildlog sizes.\n\nKoji is the RPM-based buildsystem of Fedora Linux and CentOS.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "koji-tool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."koji" or (errorHandler.buildDepError "koji"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."rpm-nvr" or (errorHandler.buildDepError "rpm-nvr"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."select-rpms" or (errorHandler.buildDepError "select-rpms"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."xdg-userdirs" or (errorHandler.buildDepError "xdg-userdirs"))
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.4") (hsPkgs."http-common" or (errorHandler.buildDepError "http-common"));
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.koji-tool.components.exes.koji-tool or (pkgs.pkgsBuildBuild.koji-tool or (errorHandler.buildToolDepError "koji-tool:koji-tool")))
          ];
          buildable = true;
        };
      };
    };
  }