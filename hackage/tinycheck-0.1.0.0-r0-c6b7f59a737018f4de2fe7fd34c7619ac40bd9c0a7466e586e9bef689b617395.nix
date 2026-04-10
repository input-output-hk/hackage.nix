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
    flags = { dev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "tinycheck"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "programming@manuelbaerenz.de";
      author = "Manuel Bärenz";
      homepage = "";
      url = "";
      synopsis = "A lightweight enumeration-based property testing library";
      description = "Tinycheck is a deterministic property testing library.\nInstead of random generation, test cases are produced by exhaustive,\nfairly-interleaved enumeration.  It integrates with the Tasty test\nframework via \"Test.Tasty.TinyCheck\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
        ];
        buildable = true;
      };
      tests = {
        "tinycheck-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tinycheck" or (errorHandler.buildDepError "tinycheck"))
          ];
          buildable = true;
        };
        "example-colour" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tinycheck" or (errorHandler.buildDepError "tinycheck"))
          ];
          buildable = true;
        };
        "example-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tinycheck" or (errorHandler.buildDepError "tinycheck"))
          ];
          buildable = true;
        };
      };
    };
  }