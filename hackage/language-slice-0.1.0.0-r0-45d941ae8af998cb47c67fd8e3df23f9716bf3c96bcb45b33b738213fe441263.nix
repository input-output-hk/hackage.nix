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
      identifier = { name = "language-slice"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Paul Koerbitz 2013";
      maintainer = "paul.koerbitz@gmail.com";
      author = "Paul Koerbitz";
      homepage = "https://github.com/paulkoerbitz/language-slice";
      url = "";
      synopsis = "AST and parser for the ZeroC Slice language (Specification language for ICE)";
      description = "AST and parser for the ZeroC Slice language (Specification language for ICE)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      tests = {
        "test-parser" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."language-slice" or (errorHandler.buildDepError "language-slice"))
            ];
          buildable = true;
          };
        };
      };
    }