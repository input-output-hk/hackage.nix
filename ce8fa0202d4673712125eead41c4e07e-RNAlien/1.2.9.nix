{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "RNAlien";
          version = "1.2.9";
        };
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
        "RNAlien" = {
          depends  = [
            hsPkgs.base
            hsPkgs.cmdargs
            hsPkgs.ViennaRNAParser
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.blastxml
            hsPkgs.biofasta
            hsPkgs.parsec
            hsPkgs.random
            hsPkgs.BlastHTTP
            hsPkgs.biocore
            hsPkgs.bytestring
            hsPkgs.Taxonomy
            hsPkgs.either-unwrap
            hsPkgs.containers
            hsPkgs.ClustalParser
            hsPkgs.EntrezHTTP
            hsPkgs.vector
            hsPkgs.edit-distance
            hsPkgs.cassava
            hsPkgs.matrix
            hsPkgs.hierarchical-clustering
            hsPkgs.filepath
            hsPkgs.HTTP
            hsPkgs.http-conduit
            hsPkgs.hxt
            hsPkgs.network
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.pureMD5
            hsPkgs.http-types
            hsPkgs.text-metrics
          ];
        };
        exes = {
          "RNAlien" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.biofasta
              hsPkgs.random
              hsPkgs.biocore
              hsPkgs.containers
              hsPkgs.RNAlien
              hsPkgs.time
              hsPkgs.either-unwrap
              hsPkgs.filepath
            ];
          };
          "RNAlienStatistics" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.cassava
              hsPkgs.vector
              hsPkgs.process
              hsPkgs.bytestring
              hsPkgs.either-unwrap
              hsPkgs.RNAlien
              hsPkgs.directory
              hsPkgs.biofasta
              hsPkgs.biocore
              hsPkgs.split
              hsPkgs.filepath
              hsPkgs.ViennaRNAParser
            ];
          };
          "SelectSequences" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.either-unwrap
              hsPkgs.RNAlien
            ];
          };
          "cmsearchToBed" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.either-unwrap
              hsPkgs.RNAlien
              hsPkgs.bytestring
              hsPkgs.text
            ];
          };
          "RNAcentralHTTPRequest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.either-unwrap
              hsPkgs.RNAlien
            ];
          };
        };
      };
    }