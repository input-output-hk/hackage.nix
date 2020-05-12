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
      identifier = { name = "monad-ste"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "carter at wellposed dot com";
      author = "Carter Tazio Schonwald";
      homepage = "http://github.com/cartazio/monad-ste";
      url = "";
      synopsis = "ST monad with efficient explicit errors";
      description = "STE is a sibling to the ST monad that provides more efficient\nabortive errors than a standard EitherT or ExceptT monad stack.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."monad-ste" or (errorHandler.buildDepError "monad-ste"))
            ];
          buildable = true;
          };
        };
      };
    }