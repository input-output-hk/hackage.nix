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
      identifier = { name = "sequence-formats"; version = "1.3.2"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "stephan.schiffels@mac.com";
      author = "Stephan Schiffels";
      homepage = "";
      url = "";
      synopsis = "A package with basic parsing utilities for several Bioinformatic data formats.";
      description = "Contains utilities to parse and write Eigenstrat, Fasta, FreqSum, VCF and other file formats used in population genetics analyses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."lens-family" or (buildDepError "lens-family"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
          (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "sequenceFormatTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequence-formats" or (buildDepError "sequence-formats"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }