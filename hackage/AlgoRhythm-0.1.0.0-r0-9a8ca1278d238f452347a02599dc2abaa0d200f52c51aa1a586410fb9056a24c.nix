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
      identifier = { name = "AlgoRhythm"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Orestis Melkonian <melkon.or@gmail.com>";
      author = "Orestis Melkonian, Joris ten Tusscher, Cas van der Rest";
      homepage = "http://github.com/omelkonian/AlgoRhythm/";
      url = "";
      synopsis = "Algorithmic music composition";
      description = "A library consisting of several mini-DSLs for representing, manipulating and\nautomatically generating music.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."midi" or (buildDepError "midi"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."Euterpea" or (buildDepError "Euterpea"))
          (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
          (hsPkgs."lilypond" or (buildDepError "lilypond"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."prettify" or (buildDepError "prettify"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."derive" or (buildDepError "derive"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."kmeans" or (buildDepError "kmeans"))
          ];
        };
      exes = {
        "music-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."AlgoRhythm" or (buildDepError "AlgoRhythm"))
            ];
          };
        };
      tests = {
        "music-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."AlgoRhythm" or (buildDepError "AlgoRhythm"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."derive" or (buildDepError "derive"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."lilypond" or (buildDepError "lilypond"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."HCodecs" or (buildDepError "HCodecs"))
            (hsPkgs."Euterpea" or (buildDepError "Euterpea"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          };
        };
      };
    }