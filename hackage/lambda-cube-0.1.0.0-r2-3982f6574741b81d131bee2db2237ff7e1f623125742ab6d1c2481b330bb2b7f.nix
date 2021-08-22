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
      specVersion = "1.12";
      identifier = { name = "lambda-cube"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2021 Junyoung Clare Jang";
      maintainer = "jjc9310@gmail.com";
      author = "Junyoung Clare Jang";
      homepage = "https://github.com/Ailrun/lambda-cube#readme";
      url = "";
      synopsis = "Haskell implementation of (some of) lambda cube calculi";
      description = "Haskell implementation of the following 4 lambda calculi:\n1. Simply typed lambda calculus\n2. System F\n3. System F omega underbar\n4. System F omega";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "lambda-cube-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."lambda-cube" or (errorHandler.buildDepError "lambda-cube"))
            ];
          buildable = true;
          };
        };
      };
    }