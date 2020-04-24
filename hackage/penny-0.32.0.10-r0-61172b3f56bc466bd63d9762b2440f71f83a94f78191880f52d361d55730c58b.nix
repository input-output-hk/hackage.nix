{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      specVersion = "1.14";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."anonymous-sums" or ((hsPkgs.pkgs-errors).buildDepError "anonymous-sums"))
          (hsPkgs."matchers" or ((hsPkgs.pkgs-errors).buildDepError "matchers"))
          (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
          (hsPkgs."ofx" or ((hsPkgs.pkgs-errors).buildDepError "ofx"))
          (hsPkgs."prednote" or ((hsPkgs.pkgs-errors).buildDepError "prednote"))
          (hsPkgs."rainbow" or ((hsPkgs.pkgs-errors).buildDepError "rainbow"))
          (hsPkgs."rainbox" or ((hsPkgs.pkgs-errors).buildDepError "rainbox"))
          (hsPkgs."action-permutations" or ((hsPkgs.pkgs-errors).buildDepError "action-permutations"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          ];
        buildable = true;
        };
      exes = {
        "penny-gibberish" = {
          depends = (pkgs.lib).optionals (flags.build-gibberish) [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."multiarg" or ((hsPkgs.pkgs-errors).buildDepError "multiarg"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if flags.build-gibberish then true else false;
          };
        "penny" = {
          depends = [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.build-penny then false else true;
          };
        "penny-selloff" = {
          depends = [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.build-selloff then false else true;
          };
        "penny-diff" = {
          depends = [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.build-diff then false else true;
          };
        "penny-reprint" = {
          depends = [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.build-reprint then false else true;
          };
        "penny-reconcile" = {
          depends = [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if !flags.build-reconcile then false else true;
          };
        };
      tests = {
        "penny-test" = {
          depends = [
            (hsPkgs."penny" or ((hsPkgs.pkgs-errors).buildDepError "penny"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."anonymous-sums" or ((hsPkgs.pkgs-errors).buildDepError "anonymous-sums"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }