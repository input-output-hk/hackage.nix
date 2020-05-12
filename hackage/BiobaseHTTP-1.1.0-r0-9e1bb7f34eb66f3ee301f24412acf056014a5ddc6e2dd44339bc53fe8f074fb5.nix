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
      identifier = { name = "BiobaseHTTP"; version = "1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "https://github.com/eggzilla/BiobaseHTTP";
      url = "";
      synopsis = "Libary to interface with the Bioinformatics HTTP services - Entrez Ensembl";
      description = "BiobaseHTTP provides functions to interface the Bioinformatics REST services - Entrez Ensembl\n\nNCBI Entrez provides multiple different databases and eutils.\n\nFor more information on Entrez refer to: <http://www.ncbi.nlm.nih.gov/gquery/>.\n\nInformation on the webservice can be found at: <http://www.ncbi.nlm.nih.gov/books/NBK25497/>.\nIf you plan to include the library in a tool, register it as explained <http://www.ncbi.nlm.nih.gov/books/NBK25497/#chapter2.Usage_Guidelines_and_Requiremen here>.\n\nInformation on ENSEMBL genomes API can be found here: <http://rest.ensemblgenomes.org/>.\n\nBiobaseHTTP is the successor of the deprecated EntrezHTTP library.";
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
          (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          (hsPkgs."BiobaseEnsembl" or (errorHandler.buildDepError "BiobaseEnsembl"))
          ];
        buildable = true;
        };
      };
    }