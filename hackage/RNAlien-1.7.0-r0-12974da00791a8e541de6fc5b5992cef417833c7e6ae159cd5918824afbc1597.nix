{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10.0";
      identifier = { name = "RNAlien"; version = "1.7.0"; };
      license = "GPL-3.0-only";
      copyright = "Florian Eggenhofer";
      maintainer = "egg@informatik.uni-freiburg.de";
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."ViennaRNAParser" or ((hsPkgs.pkgs-errors).buildDepError "ViennaRNAParser"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."Taxonomy" or ((hsPkgs.pkgs-errors).buildDepError "Taxonomy"))
          (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ClustalParser" or ((hsPkgs.pkgs-errors).buildDepError "ClustalParser"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."edit-distance" or ((hsPkgs.pkgs-errors).buildDepError "edit-distance"))
          (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
          (hsPkgs."matrix" or ((hsPkgs.pkgs-errors).buildDepError "matrix"))
          (hsPkgs."hierarchical-clustering" or ((hsPkgs.pkgs-errors).buildDepError "hierarchical-clustering"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."hxt" or ((hsPkgs.pkgs-errors).buildDepError "hxt"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."text-metrics" or ((hsPkgs.pkgs-errors).buildDepError "text-metrics"))
          (hsPkgs."BiobaseTypes" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTypes"))
          (hsPkgs."BiobaseFasta" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseFasta"))
          (hsPkgs."BiobaseBlast" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseBlast"))
          (hsPkgs."BlastHTTP" or ((hsPkgs.pkgs-errors).buildDepError "BlastHTTP"))
          (hsPkgs."BiobaseHTTP" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseHTTP"))
          (hsPkgs."silently" or ((hsPkgs.pkgs-errors).buildDepError "silently"))
          ];
        buildable = true;
        };
      exes = {
        "RNAlien" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."RNAlien" or ((hsPkgs.pkgs-errors).buildDepError "RNAlien"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."BiobaseFasta" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseFasta"))
            ];
          buildable = true;
          };
        "RNAlienScan" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."RNAlien" or ((hsPkgs.pkgs-errors).buildDepError "RNAlien"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."BiobaseFasta" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseFasta"))
            ];
          buildable = true;
          };
        "RNAlienStatistics" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."cassava" or ((hsPkgs.pkgs-errors).buildDepError "cassava"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or ((hsPkgs.pkgs-errors).buildDepError "RNAlien"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ViennaRNAParser" or ((hsPkgs.pkgs-errors).buildDepError "ViennaRNAParser"))
            (hsPkgs."BiobaseFasta" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseFasta"))
            (hsPkgs."BiobaseTypes" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTypes"))
            ];
          buildable = true;
          };
        "cmsearchToBed" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or ((hsPkgs.pkgs-errors).buildDepError "RNAlien"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "RNAcentralHTTPRequest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or ((hsPkgs.pkgs-errors).buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or ((hsPkgs.pkgs-errors).buildDepError "RNAlien"))
            ];
          buildable = true;
          };
        };
      };
    }