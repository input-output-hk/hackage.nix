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
      identifier = { name = "fedora-repoquery"; version = "0.6"; };
      license = "GPL-3.0-only";
      copyright = "2021-2024  Jens Petersen <juhpetersen@gmail.com>";
      maintainer = "Jens Petersen <juhpetersen@gmail.com>";
      author = "Jens Petersen <juhpetersen@gmail.com>";
      homepage = "https://github.com/juhp/fedora-repoquery";
      url = "";
      synopsis = "Fedora repoquery tool";
      description = "A CLI tool for repoquerying Fedora packages:\nby default it displays their version and repo location\nwith compose timestamp";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fdrq" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bodhi" or (errorHandler.buildDepError "bodhi"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cached-json-file" or (errorHandler.buildDepError "cached-json-file"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-directory" or (errorHandler.buildDepError "http-directory"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
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
            (hsPkgs.pkgsBuildBuild.fedora-repoquery.components.exes.fdrq or (pkgs.pkgsBuildBuild.fdrq or (errorHandler.buildToolDepError "fedora-repoquery:fdrq")))
          ];
          buildable = true;
        };
      };
    };
  }