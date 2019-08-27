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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Earley"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2015 Olle Fredriksson";
      maintainer = "fredriksson.olle@gmail.com";
      author = "Olle Fredriksson";
      homepage = "";
      url = "";
      synopsis = "Parsing all context-free grammars using Earley's algorithm.";
      description = "See <https://www.github.com/ollef/Earley> for more\ninformation and\n<https://github.com/ollef/Earley/tree/master/examples> for\nexamples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          ];
        };
      exes = {
        "earley-english" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        "earley-expr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          };
        "earley-expr2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          };
        "earley-mixfix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        "earley-very-ambiguous" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          };
        "earley-words" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          };
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            ];
          };
        };
      };
    }