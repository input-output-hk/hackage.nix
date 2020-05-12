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
      specVersion = "1.10";
      identifier = { name = "dbm"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Ricky Elrod";
      maintainer = "ricky@elrod.me";
      author = "Ricky Elrod";
      homepage = "https://github.com/relrod/dbm";
      url = "";
      synopsis = "A *simple* database migration tool.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dbm" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."direct-sqlite" or (errorHandler.buildDepError "direct-sqlite"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."ini" or (errorHandler.buildDepError "ini"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }