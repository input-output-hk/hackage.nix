{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sequenceTools"; version = "1.4.0.5"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."sequence-formats" or ((hsPkgs.pkgs-errors).buildDepError "sequence-formats"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
          ];
        buildable = true;
        };
      exes = {
        "pileupCaller" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequenceTools" or ((hsPkgs.pkgs-errors).buildDepError "sequenceTools"))
            (hsPkgs."sequence-formats" or ((hsPkgs.pkgs-errors).buildDepError "sequence-formats"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."rio" or ((hsPkgs.pkgs-errors).buildDepError "rio"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
            (hsPkgs."pipes-ordered-zip" or ((hsPkgs.pkgs-errors).buildDepError "pipes-ordered-zip"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."ansi-wl-pprint" or ((hsPkgs.pkgs-errors).buildDepError "ansi-wl-pprint"))
            ];
          buildable = true;
          };
        "vcf2eigenstrat" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequenceTools" or ((hsPkgs.pkgs-errors).buildDepError "sequenceTools"))
            (hsPkgs."pipes-ordered-zip" or ((hsPkgs.pkgs-errors).buildDepError "pipes-ordered-zip"))
            (hsPkgs."sequence-formats" or ((hsPkgs.pkgs-errors).buildDepError "sequence-formats"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
            ];
          buildable = true;
          };
        "genoStats" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."sequence-formats" or ((hsPkgs.pkgs-errors).buildDepError "sequence-formats"))
            (hsPkgs."sequenceTools" or ((hsPkgs.pkgs-errors).buildDepError "sequenceTools"))
            (hsPkgs."foldl" or ((hsPkgs.pkgs-errors).buildDepError "foldl"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-group" or ((hsPkgs.pkgs-errors).buildDepError "pipes-group"))
            (hsPkgs."pipes-safe" or ((hsPkgs.pkgs-errors).buildDepError "pipes-safe"))
            ];
          buildable = true;
          };
        };
      tests = {
        "sequenceToolsTests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."sequenceTools" or ((hsPkgs.pkgs-errors).buildDepError "sequenceTools"))
            (hsPkgs."sequence-formats" or ((hsPkgs.pkgs-errors).buildDepError "sequence-formats"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            ];
          buildable = true;
          };
        };
      };
    }