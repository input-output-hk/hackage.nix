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
      identifier = { name = "sequence-formats"; version = "1.1.4.1"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-text" or (errorHandler.buildDepError "pipes-text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens-family" or (errorHandler.buildDepError "lens-family"))
          (hsPkgs."pipes-bytestring" or (errorHandler.buildDepError "pipes-bytestring"))
          (hsPkgs."foldl" or (errorHandler.buildDepError "foldl"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."pipes-safe" or (errorHandler.buildDepError "pipes-safe"))
          (hsPkgs."pipes-attoparsec" or (errorHandler.buildDepError "pipes-attoparsec"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."data-memocombinators" or (errorHandler.buildDepError "data-memocombinators"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          ];
        buildable = true;
        };
      };
    }