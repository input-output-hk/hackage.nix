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
      specVersion = "1.18";
      identifier = { name = "prefix-units"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012, 2014, 2015 Google Inc.";
      maintainer = "Iustin Pop <iustin@google.com>";
      author = "Iustin Pop <iustin@google.com>";
      homepage = "https://github.com/iustin/prefix-units";
      url = "";
      synopsis = "A basic library for SI/IEC prefix units";
      description = "This library deals with parsing values containing \\\"prefix units\\\"\n(both IEC\\/binary and SI). For example, it can parse 10M and 1G,\nand it can also format values for displaying with the \\\"optimal\\\"\nunit.\nFor more details, see the man page units(7),\n<http://physics.nist.gov/cuu/Units/prefixes.html> and\n<http://physics.nist.gov/cuu/Units/binary.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test-units" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."prefix-units" or (errorHandler.buildDepError "prefix-units"))
            ];
          buildable = true;
          };
        };
      };
    }