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
    flags = { tests = false; benchmark = false; splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "edit-distance"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "batterseapower@hotmail.com";
      author = "Max Bolingbroke";
      homepage = "http://github.com/batterseapower/edit-distance";
      url = "";
      synopsis = "Levenshtein and restricted Damerau-Levenshtein edit distances";
      description = "Optimized edit distances for fuzzy matching, including Levenshtein and restricted Damerau-Levenshtein algorithms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.splitbase
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (buildDepError "base")) ];
        };
      exes = {
        "edit-distance-tests" = {
          depends = (pkgs.lib).optionals (!(!flags.tests)) ([
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework-quickcheck" or (buildDepError "test-framework-quickcheck"))
            ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."random" or (buildDepError "random"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]));
          };
        "edit-distance-benchmark" = {
          depends = (pkgs.lib).optionals (!(!flags.benchmark)) (if flags.splitbase
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."array" or (buildDepError "array"))
              (hsPkgs."random" or (buildDepError "random"))
              (hsPkgs."time" or (buildDepError "time"))
              (hsPkgs."process" or (buildDepError "process"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."unix" or (buildDepError "unix"))
              (hsPkgs."criterion" or (buildDepError "criterion"))
              ]
            else [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."deepseq" or (buildDepError "deepseq"))
              (hsPkgs."unix" or (buildDepError "unix"))
              ]);
          };
        };
      };
    }