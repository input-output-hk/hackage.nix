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
    flags = { tracedisintegrate = false; };
    package = {
      specVersion = "1.16";
      identifier = { name = "hakaru"; version = "0.4.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ppaml@indiana.edu";
      author = "The Hakaru Team";
      homepage = "http://indiana.edu/~ppaml/";
      url = "";
      synopsis = "A probabilistic programming language";
      description = "Hakaru is a simply-typed probabilistic programming language, designed\nfor easy specification of probabilistic models, and inference algorithms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."logfloat" or (buildDepError "logfloat"))
          (hsPkgs."math-functions" or (buildDepError "math-functions"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."indentation-parsec" or (buildDepError "indentation-parsec"))
          (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."integration" or (buildDepError "integration"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."HUnit" or (buildDepError "HUnit"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          ];
        };
      exes = {
        "hakaru" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "compile" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "summary" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "hk-maple" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "density" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "disintegrate" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "pretty" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "momiji" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "normalize" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "hkc" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        "mh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."hakaru" or (buildDepError "hakaru"))
            ];
          };
        };
      tests = {
        "system-testsuite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."indentation-parsec" or (buildDepError "indentation-parsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."logfloat" or (buildDepError "logfloat"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
            (hsPkgs."math-functions" or (buildDepError "math-functions"))
            (hsPkgs."integration" or (buildDepError "integration"))
            (hsPkgs."ansi-terminal" or (buildDepError "ansi-terminal"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            ];
          };
        };
      };
    }