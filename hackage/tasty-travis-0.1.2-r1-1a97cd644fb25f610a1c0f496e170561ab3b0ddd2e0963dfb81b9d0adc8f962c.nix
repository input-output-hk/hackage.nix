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
      identifier = { name = "tasty-travis"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2017 Merijn Verstraaten";
      maintainer = "Merijn Verstraaten <merijn@inconsistent.nl>";
      author = "Merijn Verstraaten";
      homepage = "https://github.com/merijn/tasty-travis";
      url = "";
      synopsis = "Fancy Travis CI output for tasty tests.";
      description = "Fancy <https://travis-ci.org/ Travis CI> output for\n<https://hackage.haskell.org/package/tasty tasty> tests. Features include:\n\n* Folded output\n\n* Coloured output\n\n* Hiding successful tests";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-travis" or (errorHandler.buildDepError "tasty-travis"))
          ];
          buildable = true;
        };
      };
    };
  }