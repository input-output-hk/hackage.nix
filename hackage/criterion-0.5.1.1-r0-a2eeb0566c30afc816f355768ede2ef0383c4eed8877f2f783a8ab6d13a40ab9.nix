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
    flags = { chart = false; gtk = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "criterion"; version = "0.5.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2009, 2010, 2011 Bryan O'Sullivan";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://bitbucket.org/bos/criterion";
      url = "";
      synopsis = "Robust, reliable performance measurement and analysis";
      description = "This library provides a powerful but simple way to measure the\nperformance of Haskell code.  It provides both a framework for\nexecuting and analysing benchmarks and a set of driver functions\nthat makes it easy to build and run benchmarks, and to analyse their\nresults.\n\nThe fastest way to get started is to read the documentation and\nexamples in the Criterion.Main module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (errorHandler.buildDepError "vector-algorithms"))
          ] ++ (pkgs.lib).optionals (flags.chart) [
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          ];
        buildable = true;
        };
      };
    }