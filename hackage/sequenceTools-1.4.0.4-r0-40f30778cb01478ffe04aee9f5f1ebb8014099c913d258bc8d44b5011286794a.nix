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
      identifier = { name = "sequenceTools"; version = "1.4.0.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "stephan.schiffels@mac.com";
      author = "Stephan Schiffels";
      homepage = "";
      url = "";
      synopsis = "A package with tools for processing DNA sequencing data";
      description = "The tools in this package process sequencing Data, in particular from ancient DNA sequencing libraries. Key tool in this package is pileupCaller, a tool to randomly sample genotypes from sequencing data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."sequence-formats" or (buildDepError "sequence-formats"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          ];
        buildable = true;
        };
      exes = {
        "pileupCaller" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequenceTools" or (buildDepError "sequenceTools"))
            (hsPkgs."sequence-formats" or (buildDepError "sequence-formats"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."rio" or (buildDepError "rio"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            (hsPkgs."pipes-ordered-zip" or (buildDepError "pipes-ordered-zip"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        "vcf2eigenstrat" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequenceTools" or (buildDepError "sequenceTools"))
            (hsPkgs."pipes-ordered-zip" or (buildDepError "pipes-ordered-zip"))
            (hsPkgs."sequence-formats" or (buildDepError "sequence-formats"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            ];
          buildable = true;
          };
        "genoStats" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."sequence-formats" or (buildDepError "sequence-formats"))
            (hsPkgs."sequenceTools" or (buildDepError "sequenceTools"))
            (hsPkgs."foldl" or (buildDepError "foldl"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."lens-family" or (buildDepError "lens-family"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-group" or (buildDepError "pipes-group"))
            (hsPkgs."pipes-safe" or (buildDepError "pipes-safe"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sequenceToolsTests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."sequenceTools" or (buildDepError "sequenceTools"))
            (hsPkgs."sequence-formats" or (buildDepError "sequence-formats"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            ];
          buildable = true;
          };
        };
      };
    }