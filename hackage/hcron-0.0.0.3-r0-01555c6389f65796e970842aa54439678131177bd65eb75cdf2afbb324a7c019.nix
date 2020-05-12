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
      specVersion = "1.6";
      identifier = { name = "hcron"; version = "0.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Timo B. Kranz <me@tbk.name>";
      author = "Timo B. Kranz";
      homepage = "http://github.com/tbh/hcron";
      url = "";
      synopsis = "A simple job scheduler, which just runs some IO action at a given time.";
      description = "A simple job scheduler for Haskell, which just runs some IO () action at a given time.\nCurrently almost all of this package is based on the excellent cron modules found in the\nBuildBox package by Ben Lippmeier.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }