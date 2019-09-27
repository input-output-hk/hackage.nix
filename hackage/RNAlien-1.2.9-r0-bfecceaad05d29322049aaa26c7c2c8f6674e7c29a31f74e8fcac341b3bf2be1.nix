let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "RNAlien"; version = "1.2.9"; };
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."ViennaRNAParser" or (buildDepError "ViennaRNAParser"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."blastxml" or (buildDepError "blastxml"))
          (hsPkgs."biofasta" or (buildDepError "biofasta"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."BlastHTTP" or (buildDepError "BlastHTTP"))
          (hsPkgs."biocore" or (buildDepError "biocore"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Taxonomy" or (buildDepError "Taxonomy"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."ClustalParser" or (buildDepError "ClustalParser"))
          (hsPkgs."EntrezHTTP" or (buildDepError "EntrezHTTP"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."edit-distance" or (buildDepError "edit-distance"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."matrix" or (buildDepError "matrix"))
          (hsPkgs."hierarchical-clustering" or (buildDepError "hierarchical-clustering"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."hxt" or (buildDepError "hxt"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."text-metrics" or (buildDepError "text-metrics"))
          ];
        buildable = true;
        };
      exes = {
        "RNAlien" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."biofasta" or (buildDepError "biofasta"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."biocore" or (buildDepError "biocore"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."RNAlien" or (buildDepError "RNAlien"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          buildable = true;
          };
        "RNAlienStatistics" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or (buildDepError "RNAlien"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."biofasta" or (buildDepError "biofasta"))
            (hsPkgs."biocore" or (buildDepError "biocore"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ViennaRNAParser" or (buildDepError "ViennaRNAParser"))
            ];
          buildable = true;
          };
        "SelectSequences" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or (buildDepError "RNAlien"))
            ];
          buildable = true;
          };
        "cmsearchToBed" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or (buildDepError "RNAlien"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "RNAcentralHTTPRequest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."RNAlien" or (buildDepError "RNAlien"))
            ];
          buildable = true;
          };
        };
      };
    }