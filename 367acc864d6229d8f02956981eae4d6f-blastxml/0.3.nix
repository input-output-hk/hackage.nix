{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "blastxml";
          version = "0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "ketil@malde.org";
        author = "Ketil Malde";
        homepage = "http://biohaskell.org/";
        url = "";
        synopsis = "Library for reading Blast XML output";
        description = "This library contains a data structure and functions for\nreading output from the BLAST sequence alignment program.";
        buildType = "Simple";
      };
      components = {
        blastxml = {
          depends  = [
            hsPkgs.base
            hsPkgs.biocore
            hsPkgs.bytestring
            hsPkgs.parallel
            hsPkgs.tagsoup
          ];
        };
      };
    }