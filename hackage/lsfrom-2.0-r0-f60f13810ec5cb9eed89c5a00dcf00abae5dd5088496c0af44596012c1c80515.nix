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
      identifier = { name = "lsfrom"; version = "2.0"; };
      license = "BSD-3-Clause";
      copyright = "2018,2021-2025  Jens Petersen";
      maintainer = "Jens Petersen <petersen@redhat.com>";
      author = "Jens Petersen <petersen@redhat.com>";
      homepage = "https://github.com/juhp/lsfrom";
      url = "";
      synopsis = "List directory files starting from a specific name";
      description = "`lsfrom` lists the entries of a directory starting from\na particular file in locale collation order, which\ncan be useful for continuing a shell command or script\nafter a failure on an entry.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "lsfrom" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
            (hsPkgs."simple-cmd-args" or (errorHandler.buildDepError "simple-cmd-args"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."simple-cmd" or (errorHandler.buildDepError "simple-cmd"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.lsfrom.components.exes.lsfrom or (pkgs.pkgsBuildBuild.lsfrom or (errorHandler.buildToolDepError "lsfrom:lsfrom")))
          ];
          buildable = true;
        };
      };
    };
  }