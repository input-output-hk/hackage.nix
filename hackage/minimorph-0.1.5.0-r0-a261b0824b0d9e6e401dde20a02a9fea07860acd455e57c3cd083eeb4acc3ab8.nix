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
      specVersion = "1.8";
      identifier = { name = "minimorph"; version = "0.1.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eric.kow@gmail.com";
      author = "Eric Kow";
      homepage = "http://darcsden.com/kowey/minimorph";
      url = "";
      synopsis = "English spelling functions with an emphasis on simplicity.";
      description = "A set of simplistic functions capturing the more regular\nparts of English spelling (for generation, not parsing).\nYou will need to complement this with some account for\nirregular nouns/verbs. This package is not meant to provide\nanything resembling a full account of English morphology\n(something like Functional Morphology or sequor could be\nbetter suited). The main goal is to provide something cheap\nand cheerful with no learning curve, that you can use until\nyour application calls for more robustness.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test-minimorph" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."minimorph" or (errorHandler.buildDepError "minimorph"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }