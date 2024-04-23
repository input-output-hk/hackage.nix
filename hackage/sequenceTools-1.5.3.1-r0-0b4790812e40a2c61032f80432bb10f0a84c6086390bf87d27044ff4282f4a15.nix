{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sequenceTools"; version = "1.5.3.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "stephan.schiffels@mac.com";
      author = "Stephan Schiffels";
      homepage = "https://github.com/stschiff/sequenceTools";
      url = "";
      synopsis = "A package with tools for processing DNA sequencing data";
      description = "The tools in this package process sequencing Data, in particular from ancient DNA sequencing libraries. Key tool in this package is pileupCaller, a tool to randomly sample genotypes from sequencing data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."sequence-formats" or (errorHandler.buildDepError "sequence-formats"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
        ];
        buildable = true;
      };
      exes = {
        "pileupCaller" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequenceTools" or (errorHandler.buildDepError "sequenceTools"))
            (hsPkgs."sequence-formats" or (errorHandler.buildDepError "sequence-formats"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
            (hsPkgs."pipes-ordered-zip" or (errorHandler.buildDepError "pipes-ordered-zip"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "vcf2eigenstrat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequenceTools" or (errorHandler.buildDepError "sequenceTools"))
            (hsPkgs."pipes-ordered-zip" or (errorHandler.buildDepError "pipes-ordered-zip"))
            (hsPkgs."sequence-formats" or (errorHandler.buildDepError "sequence-formats"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
          buildable = true;
        };
        "genoStats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sequence-formats" or (errorHandler.buildDepError "sequence-formats"))
            (hsPkgs."sequenceTools" or (errorHandler.buildDepError "sequenceTools"))
            (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
            (hsPkgs."pipes-group" or (errorHandler.buildDepError "pipes-group"))
            (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sequenceToolsTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."sequenceTools" or (errorHandler.buildDepError "sequenceTools"))
            (hsPkgs."sequence-formats" or (errorHandler.buildDepError "sequence-formats"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          ];
          buildable = true;
        };
      };
    };
  }