{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "cmv";
          version = "1.0.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "egg@informatik.uni-freiburg.de";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Detailed visualization of CMs, HMMs and their comparisions";
        description = "cmv is a collection of tools for the visualisation of Hidden Markov Models (HMMV) and RNA-family models (CMV). Moreover it can visualise comparisons of these models (HMMCV,CMCV), and annotate linked regions in the structural alignments they were constructed from and via, 3rd party tools, in their consensus secondary structure.";
        buildType = "Simple";
      };
      components = {
        cmv = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.diagrams-lib
            hsPkgs.BiobaseInfernal
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.ParsecTools
            hsPkgs.diagrams-cairo
            hsPkgs.filepath
            hsPkgs.colour
            hsPkgs.PrimitiveArray
            hsPkgs.BiobaseXNA
            hsPkgs.mtl
            hsPkgs.directory
            hsPkgs.either-unwrap
            hsPkgs.SVGFonts
            hsPkgs.BioHMM
            hsPkgs.StockholmAlignment
            hsPkgs.BiobaseTypes
            hsPkgs.containers
            hsPkgs.diagrams-core
          ];
        };
        exes = {
          CMCV = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
              hsPkgs.BiobaseXNA
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.StockholmAlignment
            ];
          };
          CMV = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
              hsPkgs.BiobaseXNA
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.StockholmAlignment
            ];
          };
          CMCWStoCMCV = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
              hsPkgs.BiobaseXNA
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
            ];
          };
          CMCtoHMMC = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
              hsPkgs.BiobaseXNA
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.BioHMM
            ];
          };
          HMMCtoCMC = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
              hsPkgs.BiobaseXNA
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.BioHMM
            ];
          };
          CMVJson = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.BiobaseInfernal
              hsPkgs.BiobaseXNA
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.aeson
            ];
          };
          HMMCV = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.BioHMM
              hsPkgs.StockholmAlignment
            ];
          };
          HMMV = {
            depends  = [
              hsPkgs.base
              hsPkgs.cmdargs
              hsPkgs.diagrams-lib
              hsPkgs.parsec
              hsPkgs.colour
              hsPkgs.containers
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.directory
              hsPkgs.cmv
              hsPkgs.either-unwrap
              hsPkgs.filepath
              hsPkgs.BioHMM
              hsPkgs.StockholmAlignment
            ];
          };
        };
      };
    }