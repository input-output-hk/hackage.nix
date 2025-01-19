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
    flags = { benchpapi = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "mwc-random"; version = "0.15.2.0"; };
      license = "BSD-2-Clause";
      copyright = "2009, 2010, 2011 Bryan O'Sullivan";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "https://github.com/haskell/mwc-random";
      url = "";
      synopsis = "Fast, high quality pseudo random number generation";
      description = "This package contains code for generating high quality random\nnumbers that follow either a uniform or normal distribution.  The\ngenerated numbers are suitable for use in statistical applications.\n.\nThe uniform PRNG uses Marsaglia's MWC256 (also known as MWC8222)\nmultiply-with-carry generator, which has a period of 2^8222 and\nfares well in tests of randomness.  It is also extremely fast,\nbetween 2 and 3 times faster than the Mersenne Twister.\n.\nCompared to the mersenne-random package, this package has a more\nconvenient API, is faster, and supports more statistical\ndistributions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
        ];
        buildable = true;
      };
      tests = {
        "mwc-prop-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."math-functions" or (errorHandler.buildDepError "math-functions"))
          ];
          buildable = true;
        };
        "mwc-doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = (if compiler.isGhcjs && true || compiler.isGhc && compiler.version.lt "8.0"
            then false
            else true) && (if system.isOsx && (compiler.isGhc && compiler.version.lt "9.6")
            then false
            else true);
        };
      };
      benchmarks = {
        "mwc-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mersenne-random" or (errorHandler.buildDepError "mersenne-random"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
        "mwc-bench-papi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."mersenne-random" or (errorHandler.buildDepError "mersenne-random"))
            (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-papi" or (errorHandler.buildDepError "tasty-papi"))
          ];
          buildable = if compiler.isGhcjs && true || !flags.benchpapi || compiler.isGhc && compiler.version.lt "8.2"
            then false
            else true;
        };
      };
    };
  }