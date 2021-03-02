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
      specVersion = "1.24";
      identifier = { name = "pathfindingcore"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.bertsche@gmail.com";
      author = "Jason Bertsche";
      homepage = "http://github.com/TheBizzle";
      url = "";
      synopsis = "A toy pathfinding library";
      description = "A toy pathfinding library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."bizzlelude" or (errorHandler.buildDepError "bizzlelude"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."bizzlelude" or (errorHandler.buildDepError "bizzlelude"))
            (hsPkgs."pathfindingcore" or (errorHandler.buildDepError "pathfindingcore"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }