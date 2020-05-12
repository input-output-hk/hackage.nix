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
      identifier = { name = "mockazo"; version = "0.1.0"; };
      license = "MIT";
      copyright = "2019 The Agile Monkeys";
      maintainer = "hackers@theagilemonkeys.com";
      author = "The Agile Monkeys";
      homepage = "https://github.com/theam/mockazo#readme";
      url = "";
      synopsis = "Mock records of functions easily";
      description = "Please see the README on GitHub at <https://github.com/theam/mockazo#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "mockazo-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."mockazo" or (errorHandler.buildDepError "mockazo"))
            (hsPkgs."multistate" or (errorHandler.buildDepError "multistate"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }