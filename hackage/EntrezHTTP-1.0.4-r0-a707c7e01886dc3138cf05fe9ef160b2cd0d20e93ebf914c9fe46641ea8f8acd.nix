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
      identifier = { name = "EntrezHTTP"; version = "1.0.4"; };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "https://github.com/eggzilla/EntrezHTTP";
      url = "";
      synopsis = "Libary to interface with the NCBI Entrez REST service.";
      description = "EntrezHTTP provides functions to query the NCBI entrez REST interface.\n\nThere are multiple different databases and tools, so called eutils,\nprovided by the service.\n\nFor more information on Entrez refer to: <http://www.ncbi.nlm.nih.gov/gquery/>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/books/NBK25497/>.\n\nIf you plan to include the library in a tool, register it as explained <http://www.ncbi.nlm.nih.gov/books/NBK25497/#chapter2.Usage_Guidelines_and_Requiremen here>.";
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
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }