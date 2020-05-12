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
      specVersion = "1.8";
      identifier = { name = "SelectSequencesFromMSA"; version = "1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at         ";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "SelectSequences is a tool for selection of a represenative subset of sequences from a multiple sequence alignment in clustal format.";
      description = "SelectSequences is a tool for selection of a represenative subset of sequences from a multiple sequence alignment in clustal format.\n\nOptional Dependencies:\n\n* <https://www.tbi.univie.ac.at/~wash/RNAz/ RNAz>\nInstallation via cabal-install:\n\n> cabal install SelectSequencesFromMSA";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."ViennaRNAParser" or (errorHandler.buildDepError "ViennaRNAParser"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ClustalParser" or (errorHandler.buildDepError "ClustalParser"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."text-metrics" or (errorHandler.buildDepError "text-metrics"))
          ];
        buildable = true;
        };
      exes = {
        "SelectSequencesFromMSA" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."SelectSequencesFromMSA" or (errorHandler.buildDepError "SelectSequencesFromMSA"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }