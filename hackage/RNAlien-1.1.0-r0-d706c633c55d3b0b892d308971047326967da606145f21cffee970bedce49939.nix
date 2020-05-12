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
      identifier = { name = "RNAlien"; version = "1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@tbi.univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Unsupervized construction of RNA family models";
      description = "RNAlien is a tool for automatic construction of RNAfamily models from a single sequence.\n\nIt is available as a commandline tool, for testing or construction of few sequences the webservice can be used.\n\nThe source code of RNAlien, as well as the webserver is open source and available via GitHub (License GPL-3):\n\n* <https://github.com/eggzilla/RNAlien RNAlien>\n\n* <https://github.com/eggzilla/AlienServer AlienServer>\n\nTaxonomyTools which can be used to visualise the organisms included in a RNAlien result can be found here (License GPL-3):\n\n* <https://github.com/eggzilla/TaxonomyTools TaxonomyTools-Github>\n\n* <https://hackage.haskell.org/package/Taxonomy TaxonomyTools-Hackage>\n\nFor instruction how to use RNAlien please see the <http://rna.tbi.univie.ac.at/rnalien/help Help page>.\n\nDependencies:\n\n* <http://infernal.janelia.org/ Infernal>\n\n* <http://www.bioinf.uni-freiburg.de/Software/LocARNA/#download Locarna>\n\n* <https://www.tbi.univie.ac.at/~wash/RNAz/ RNAz>\n\n* <http://wash.github.io/rnacode/ RNAcode>\n\n* <http://www.tbi.univie.ac.at/RNA/index.html#download ViennaRNA package>\n\nInstallation via cabal-install:\n\n> cabal install RNAlien";
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
          (hsPkgs."blastxml" or (errorHandler.buildDepError "blastxml"))
          (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."BlastHTTP" or (errorHandler.buildDepError "BlastHTTP"))
          (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."Taxonomy" or (errorHandler.buildDepError "Taxonomy"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ClustalParser" or (errorHandler.buildDepError "ClustalParser"))
          (hsPkgs."EntrezHTTP" or (errorHandler.buildDepError "EntrezHTTP"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."edit-distance" or (errorHandler.buildDepError "edit-distance"))
          (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
          (hsPkgs."matrix" or (errorHandler.buildDepError "matrix"))
          (hsPkgs."hierarchical-clustering" or (errorHandler.buildDepError "hierarchical-clustering"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          ];
        buildable = true;
        };
      exes = {
        "RNAlien" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."RNAlien" or (errorHandler.buildDepError "RNAlien"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "RNAlienStatistics" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."cassava" or (errorHandler.buildDepError "cassava"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or (errorHandler.buildDepError "RNAlien"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."biofasta" or (errorHandler.buildDepError "biofasta"))
            (hsPkgs."biocore" or (errorHandler.buildDepError "biocore"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ViennaRNAParser" or (errorHandler.buildDepError "ViennaRNAParser"))
            ];
          buildable = true;
          };
        "SelectSequences" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or (errorHandler.buildDepError "RNAlien"))
            ];
          buildable = true;
          };
        };
      };
    }