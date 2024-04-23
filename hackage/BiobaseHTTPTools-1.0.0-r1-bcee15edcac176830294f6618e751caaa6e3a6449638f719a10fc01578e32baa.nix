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
      identifier = { name = "BiobaseHTTPTools"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Tools to query Bioinformatics HTTP services e.g. Entrez, Ensembl.";
      description = "BiobaseHTTP provides tools to interface the Bioinformatics REST services, currently Entrez, Ensembl.\n\nUsage instructions can be found in the <https://github.com/eggzilla/BiobaseHTTPTools README>\n\nCurrently following Tools are included:\n\n* FetchSequences:\nRetrieves sequence in fasta format\n\n* AccessionToTaxId:\nConverts NCBI accession number to taxonomy id\n\n* GeneIdToGOTerms:\nRetrieve GOterms for a Ensembl GeneId\n\n* GeneIdToUniProtId\nRetrieves UniProtId for a Ensembl GeneId";
      buildType = "Simple";
    };
    components = {
      exes = {
        "FetchSequence" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (errorHandler.buildDepError "BiobaseHTTP"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."BiobaseFasta" or (errorHandler.buildDepError "BiobaseFasta"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "AccessionToTaxId" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (errorHandler.buildDepError "BiobaseHTTP"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
          buildable = true;
        };
        "GeneIdToUniProtId" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (errorHandler.buildDepError "BiobaseHTTP"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "GeneIdToGOTerms" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."BiobaseHTTP" or (errorHandler.buildDepError "BiobaseHTTP"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }