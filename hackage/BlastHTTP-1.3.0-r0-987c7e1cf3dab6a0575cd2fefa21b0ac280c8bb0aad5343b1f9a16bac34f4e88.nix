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
      identifier = { name = "BlastHTTP"; version = "1.3.0"; };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer";
      maintainer = "florian.eggenhofer@univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "https://github.com/eggzilla/BlastHTTP";
      url = "";
      synopsis = "Libary to interface with the NCBI blast REST interface";
      description = "Searches for a provided nucleotide or protein sequence with the NCBI Blast REST service and returns a blast result in xml format as BlastResult datatype.\n\nFor more information on BLAST refer to: <http://blast.ncbi.nlm.nih.gov/Blast.cgi>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/BLAST/developer.shtml>.\n\nIf you plan to submit more than 20 searches in one session, please look up the Usage Guidelines in the webservice information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."blastxml" or (errorHandler.buildDepError "blastxml"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
          (hsPkgs."BiobaseBlast" or (errorHandler.buildDepError "BiobaseBlast"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
        ];
        buildable = true;
      };
    };
  }