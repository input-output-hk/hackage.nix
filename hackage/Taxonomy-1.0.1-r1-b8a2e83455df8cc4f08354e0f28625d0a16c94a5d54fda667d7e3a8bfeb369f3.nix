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
      identifier = { name = "Taxonomy"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "florian.eggenhofer@univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for parsing, processing and vizualization of taxonomy data";
      description = "Haskell cabal Taxonomy libary contains tools, parsers, datastructures and visualisation\nfor the NCBI (National Center for Biotechnology Information) Taxonomy datasources.\n\nIt can utilize information from the <http://www.ncbi.nlm.nih.gov/taxonomy Entrez> REST interface via <https://github.com/eggzilla/EntrezHTTP EntrezHTTP>,\nas well as from the files of the Taxonomy database <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ dump>.\n\nInput data is parsed into a FGL based datastructure, which enables a wealth of processing\nsteps like node distances, retrieval of parent nodes or extraction of\nsubtrees.\n\nTrees can be visualised via dot-format (<http://graphviz.org/ graphviz>)\n\n<<http://www.tbi.univie.ac.at/~egg/taxonomy.svg>>\n\nor via json-format (<http://d3js.org/d3js>).\n\nThe <https://hackage.haskell.org/package/TaxonomyTools TaxonomyTools> package contains tools based on this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }