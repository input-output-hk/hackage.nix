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
      specVersion = "3.4";
      identifier = { name = "antelude"; version = "0.1.0"; };
      license = "MIT";
      copyright = "© 2024 dneaves";
      maintainer = "dneavesdev@pm.me";
      author = "dneaves";
      homepage = "https://codeberg.org/dneaves/antelude";
      url = "";
      synopsis = "Yet another alternative Prelude for Haskell.";
      description = "A Prelude with an intention to simplify the global scope, fix up a few things, add a few things, and be as dev-friendly for everyone as possible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "antelude-test" = {
          depends = [
            (hsPkgs."antelude" or (errorHandler.buildDepError "antelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          ];
          buildable = true;
        };
      };
    };
  }