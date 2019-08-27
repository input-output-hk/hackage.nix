let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
      specVersion = "1.8";
      identifier = { name = "penny"; version = "0.32.0.6"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."anonymous-sums" or (buildDepError "anonymous-sums"))
          (hsPkgs."matchers" or (buildDepError "matchers"))
          (hsPkgs."multiarg" or (buildDepError "multiarg"))
          (hsPkgs."ofx" or (buildDepError "ofx"))
          (hsPkgs."prednote" or (buildDepError "prednote"))
          (hsPkgs."rainbow" or (buildDepError "rainbow"))
          (hsPkgs."action-permutations" or (buildDepError "action-permutations"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          ];
        };
      exes = {
        "penny-gibberish" = {
          depends = (pkgs.lib).optionals (flags.build-gibberish) [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."multiarg" or (buildDepError "multiarg"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        "penny" = {
          depends = [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "penny-selloff" = {
          depends = [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "penny-diff" = {
          depends = [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "penny-reprint" = {
          depends = [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "penny-reconcile" = {
          depends = [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      tests = {
        "penny-test" = {
          depends = [
            (hsPkgs."penny" or (buildDepError "penny"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."multiarg" or (buildDepError "multiarg"))
            (hsPkgs."anonymous-sums" or (buildDepError "anonymous-sums"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."random-shuffle" or (buildDepError "random-shuffle"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }