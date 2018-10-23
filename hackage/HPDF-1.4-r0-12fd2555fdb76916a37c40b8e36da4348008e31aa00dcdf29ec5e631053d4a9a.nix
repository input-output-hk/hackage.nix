{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HPDF";
        version = "1.4";
      };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) 2007-2008, alpheccar";
      maintainer = "misc@NOSPAMalpheccar.org";
      author = "";
      homepage = "http://www.alpheccar.org";
      url = "";
      synopsis = "Generation of PDF documents";
      description = "A PDF library with support for several pages, page transitions, outlines, annotations, compression, colors, shapes, patterns, jpegs, fonts, typesetting ...";
      buildType = "Simple";
    };
    components = {
      "HPDF" = {
        depends  = if flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.random)
            (hsPkgs.bytestring)
            (hsPkgs.array)
            (hsPkgs.zlib)
            (hsPkgs.binary)
            (hsPkgs.mtl)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.zlib)
            (hsPkgs.binary)
          ];
      };
    };
  }