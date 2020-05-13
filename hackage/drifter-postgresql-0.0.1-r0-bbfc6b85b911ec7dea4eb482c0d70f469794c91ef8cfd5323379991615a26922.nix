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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "drifter-postgresql"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL support for the drifter schema migration tool";
      description = "Support for postgresql-simple Query migrations as well as arbitrary Haskell IO functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."drifter" or (errorHandler.buildDepError "drifter"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drifter" or (errorHandler.buildDepError "drifter"))
            (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
            (hsPkgs."drifter-postgresql" or (errorHandler.buildDepError "drifter-postgresql"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."either" or (errorHandler.buildDepError "either"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }