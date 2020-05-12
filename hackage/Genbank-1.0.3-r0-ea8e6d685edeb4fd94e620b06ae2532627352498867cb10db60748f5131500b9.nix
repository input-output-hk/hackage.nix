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
      identifier = { name = "Genbank"; version = "1.0.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for processing the NCBI genbank format";
      description = "Haskell cabal Genbank libary contains tools, parser and datastructures for the NCBI (National Center for Biotechnology Information) Genbank format.\n\nFor more information on genbank refer to: <http://www.ncbi.nlm.nih.gov/genbank/>\n\nFor a sample genbank record see: <http://www.ncbi.nlm.nih.gov/Sitemap/samplerecord.html>\n\n\"Bio.GenbankData\" - Datastructures for Genbank format\n\nContains Haskell datastructures for Genbank format and for contained features, subfeatures\n\n\"Bio.GenbankParser\" - Parse Genbank format\n\nContains Haskell functions to parse Genbank format from files or internal Strings.\n\n\"Bio.GenbankTools\" - Tools for processing Genbank\n\nContains Haskell functions to extract nucleotide sequences for features";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
          ];
        buildable = true;
        };
      exes = {
        "GenbankTest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."Genbank" or (errorHandler.buildDepError "Genbank"))
            ];
          buildable = true;
          };
        };
      };
    }