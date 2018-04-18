{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ViennaRNAParser";
          version = "1.2.3";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "florian.eggenhofer@univie.ac.at";
        author = "Florian Eggenhofer";
        homepage = "";
        url = "";
        synopsis = "Libary for parsing ViennaRNA package output";
        description = "Currently contains parsers and datatypes for: RNAalifold, RNAdistance, RNAcofold, RNAfold, RNAplex, RNAup, RNAz.\n\nFor more information on the ViennaRNA package refer to <http://www.tbi.univie.ac.at/RNA/>.\n\nThe libary is tested with Version 2.1.9 of the ViennaRNA package.";
        buildType = "Simple";
      };
      components = {
        ViennaRNAParser = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.process
          ];
        };
        tests = {
          hspec = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.ViennaRNAParser
              hsPkgs.hspec
            ];
          };
        };
      };
    }