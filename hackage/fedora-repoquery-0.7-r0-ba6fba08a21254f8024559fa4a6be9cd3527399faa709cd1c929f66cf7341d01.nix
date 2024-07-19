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
      identifier = { name = "fedora-repoquery"; version = "0.7"; };
      license = "GPL-3.0-only";
      copyright = "2021-2024  Jens Petersen <petersen@redhat.com>";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/fedora-repoquery";
      url = "";
      synopsis = "Fedora release repos package query tool";
      description = "A CLI tool for repoquerying Fedora and Centos Stream release packages:\nby default it displays their version and repo location\nand optionally the repo compose timestamps";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fedora-repoquery" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bodhi" or (errorHandler.buildDepError "bodhi"))
            (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
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
            (hsPkgs.buildPackages.fedora-repoquery.components.exes.fedora-repoquery or (pkgs.buildPackages.fedora-repoquery or (errorHandler.buildToolDepError "fedora-repoquery:fedora-repoquery")))
          ];
          buildable = true;
        };
      };
    };
  }