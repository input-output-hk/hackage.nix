{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "HPDF";
          version = "1.4.9";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007-2016, alpheccar.org";
        maintainer = "misc@NOSPAMalpheccar.org";
        author = "";
        homepage = "http://www.alpheccar.org";
        url = "";
        synopsis = "Generation of PDF documents";
        description = "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ... Have a look at the \"Graphics.PDF.Documentation\" module to see how to use it. Or, download the package and look at the test.hs file in the Test folder. That file is giving an example of each feature.";
        buildType = "Simple";
      };
      components = {
        HPDF = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.random
            hsPkgs.bytestring
            hsPkgs.array
            hsPkgs.zlib
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.vector
            hsPkgs.errors
            hsPkgs.base64-bytestring
          ];
        };
        tests = {
          HPDF-Tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.HTF
              hsPkgs.HPDF
            ];
          };
        };
      };
    }