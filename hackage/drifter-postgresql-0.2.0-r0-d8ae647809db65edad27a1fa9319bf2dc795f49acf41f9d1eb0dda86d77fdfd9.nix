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
      identifier = { name = "drifter-postgresql"; version = "0.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/michaelxavier/drifter-postgresql";
      url = "";
      synopsis = "PostgreSQL support for the drifter schema migration tool";
      description = "Support for postgresql-simple Query migrations as well as\narbitrary Haskell IO functions. Be sure to check the\nexamples dir for a usage example.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."drifter" or (errorHandler.buildDepError "drifter"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
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