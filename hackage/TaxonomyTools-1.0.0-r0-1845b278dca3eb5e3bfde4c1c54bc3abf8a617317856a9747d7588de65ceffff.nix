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
      identifier = { name = "TaxonomyTools"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Tool for parsing, processing, comparing and visualizing taxonomy data";
      description = "Taxonomy Tool utilizes functions from the Taxonomy library to provide\n\nseveral commandline utilities for routine-tasks with taxonomy data.\n\nCurrently some tools accept either the <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ NCBI taxonomy dump> as input,\n\nwhile other retrieve the data directly from the <http://www.ncbi.nlm.nih.gov/gquery/ NCBI Entrez REST> interface.\n\nIt is planned to support both datasources with each tool.\n\nUsage instructions can be found in the <https://github.com/eggzilla/TaxonomyTools README>\n\nCurrently following Tools are included:\n\n* Accessions2TaxIds:\nConverts a list of NCBI accession numbers into NCBI taxonomy ids\n\n* TaxIds2Tree:\nList of taxonomy ids is converted into a graphical tree representation\neither as .svg (via graphviz) or as .json (via d3js).\n\n* TaxIds2TreeCompare:\nMultiple lists of taxonomy ids are converted into a visualisation of the\ntaxonomic tree highlighting the input nodes corresponding to their list.\n\n* TaxIds2Text:\nList of taxonomy ids is converted in a short text summary for each node.\n\n* TreeDistance:\nComputes the distance between two input nodes on the given tree.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "TaxIds2Text" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "Accessions2TaxIds" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."EntrezHTTP" or (errorHandler.buildDepError "EntrezHTTP"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          ];
          buildable = true;
        };
        "TaxIds2TreeCompare" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
        "TaxIds2Tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ];
          buildable = true;
        };
        "TaxIdsDistance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }