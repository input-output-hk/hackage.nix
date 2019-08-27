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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tries"; version = "0.0.5"; };
      license = "BSD-3-Clause";
      copyright = "2018 Athan Clark";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/tries#readme";
      url = "";
      synopsis = "Various trie implementations in Haskell";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/tries#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
          (hsPkgs."composition" or (buildDepError "composition"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."keys" or (buildDepError "keys"))
          (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
          (hsPkgs."rose-trees" or (buildDepError "rose-trees"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."sets" or (buildDepError "sets"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          ];
        };
      tests = {
        "tries-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."composition" or (buildDepError "composition"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."keys" or (buildDepError "keys"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."rose-trees" or (buildDepError "rose-trees"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sets" or (buildDepError "sets"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      benchmarks = {
        "tries-bench-lookup" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bytestring-trie" or (buildDepError "bytestring-trie"))
            (hsPkgs."composition" or (buildDepError "composition"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."keys" or (buildDepError "keys"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."rose-trees" or (buildDepError "rose-trees"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."sets" or (buildDepError "sets"))
            (hsPkgs."tries" or (buildDepError "tries"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          };
        };
      };
    }