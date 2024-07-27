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
      specVersion = "2.0";
      identifier = { name = "dnf-repo"; version = "0.6.1"; };
      license = "GPL-3.0-only";
      copyright = "2022-2024  Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/dnf-repo";
      url = "";
      synopsis = "A dnf wrapper with fine control of enabled repos";
      description = "A command-line wrapper of the dnf package manager to\ncontrol the repos enabled for a dnf invocation.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "dnf-repo" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."simple-prompt" or (errorHandler.buildDepError "simple-prompt"))
          ];
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
            (hsPkgs.pkgsBuildBuild.dnf-repo.components.exes.dnf-repo or (pkgs.pkgsBuildBuild.dnf-repo or (errorHandler.buildToolDepError "dnf-repo:dnf-repo")))
          ];
          buildable = true;
        };
      };
    };
  }