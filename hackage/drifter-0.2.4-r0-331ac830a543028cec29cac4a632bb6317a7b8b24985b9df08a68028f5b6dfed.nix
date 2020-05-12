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
      identifier = { name = "drifter"; version = "0.2.4"; };
      license = "MIT";
      copyright = "";
      maintainer = "Michael Xavier <michael@michaelxavier.net>";
      author = "AndrewRademacher";
      homepage = "https://github.com/AndrewRademacher/drifter";
      url = "";
      synopsis = "Simple schema management for arbitrary databases.";
      description = "Simple support for migrating database schemas, which allows\nhaskell functions to be run as a part of the migration. Note\nthat this library isn't meant to be used directly, but rather\nas a base library for a specific driver. For an example of a\nfunctioning driver, you should check out <https://hackage.haskell.org/package/drifter-postgresql drifter-postgresql>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."drifter" or (errorHandler.buildDepError "drifter"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }