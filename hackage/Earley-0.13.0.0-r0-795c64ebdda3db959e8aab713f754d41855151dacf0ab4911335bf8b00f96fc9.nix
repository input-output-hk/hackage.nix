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
      identifier = { name = "Earley"; version = "0.13.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014-2018 Olle Fredriksson";
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
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
        buildable = true;
        };
      exes = {
        "earley-english" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-expr" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-expr2" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-mixfix" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-roman-numerals" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-very-ambiguous" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-words" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "earley-infinite" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            ];
          buildable = if !flags.examples then false else true;
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
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."Earley" or (buildDepError "Earley"))
            (hsPkgs."ListLike" or (buildDepError "ListLike"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }