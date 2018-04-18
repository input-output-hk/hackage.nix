{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "HPDF";
          version = "1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2007, alpheccar";
        maintainer = "misc@NOSPAMalpheccar.org";
        author = "";
        homepage = "http://www.alpheccar.org/en/posts/show/82";
        url = "";
        synopsis = "Generation of PDF documents";
        description = "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ...";
        buildType = "Custom";
      };
      components = {
        HPDF = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.mtl
            hsPkgs.encoding
            hsPkgs.zlib
            hsPkgs.binary
          ];
        };
      };
    }