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
    flags = { pedantic = false; old-base = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "number-length"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016, Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/number-length";
      url = "";
      synopsis = "Number of digits in a number in decimal and hexadecimal representation.";
      description = "There are situations when it is necessary to know the length of a number in\ndecimal or hexadecimal form. In example when allocating buffer while\nserializing a number in to binary or human readable format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.old-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
          ] ++ (if flags.old-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."number-length" or (errorHandler.buildDepError "number-length"))
          ] ++ (if flags.old-base
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }