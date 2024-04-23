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
    flags = {
      build-gibberish = false;
      build-penny = true;
      build-selloff = true;
      build-diff = true;
      build-reprint = true;
      build-reconcile = true;
      debug = false;
      test = false;
      incabal = true;
    };
    package = {
      specVersion = "1.12";
      identifier = { name = "penny"; version = "0.32.0.10"; };
      license = "BSD-3-Clause";
      copyright = "2012-2014 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system";
      description = "Penny is a double-entry accounting system.  You keep your records in a\nplain-text file, and Penny gives you useful reports in your UNIX shell.\n\nFor more information, please see\n\n<http://www.github.com/massysett/penny>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."anonymous-sums" or (errorHandler.buildDepError "anonymous-sums"))
          (hsPkgs."matchers" or (errorHandler.buildDepError "matchers"))
          (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
          (hsPkgs."ofx" or (errorHandler.buildDepError "ofx"))
          (hsPkgs."prednote" or (errorHandler.buildDepError "prednote"))
          (hsPkgs."rainbow" or (errorHandler.buildDepError "rainbow"))
          (hsPkgs."rainbox" or (errorHandler.buildDepError "rainbox"))
          (hsPkgs."action-permutations" or (errorHandler.buildDepError "action-permutations"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
        ];
        buildable = true;
      };
      exes = {
        "penny-gibberish" = {
          depends = pkgs.lib.optionals (flags.build-gibberish) [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multiarg" or (errorHandler.buildDepError "multiarg"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = if flags.build-gibberish then true else false;
        };
        "penny" = {
          depends = [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.build-penny then false else true;
        };
        "penny-selloff" = {
          depends = [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.build-selloff then false else true;
        };
        "penny-diff" = {
          depends = [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.build-diff then false else true;
        };
        "penny-reprint" = {
          depends = [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.build-reprint then false else true;
        };
        "penny-reconcile" = {
          depends = [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if !flags.build-reconcile then false else true;
        };
      };
      tests = {
        "penny-test" = {
          depends = [
            (hsPkgs."penny" or (errorHandler.buildDepError "penny"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."anonymous-sums" or (errorHandler.buildDepError "anonymous-sums"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."random-shuffle" or (errorHandler.buildDepError "random-shuffle"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }