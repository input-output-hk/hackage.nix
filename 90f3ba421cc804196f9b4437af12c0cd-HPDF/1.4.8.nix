{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "HPDF";
          version = "1.4.8";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2007-2015, alpheccar.org";
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
            hsPkgs.base64-bytestring
          ];
        };
      };
    }