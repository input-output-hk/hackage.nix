{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "massiv-io";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Alexey Kuleshevich";
        maintainer = "alexey@kuleshevi.ch";
        author = "Alexey Kuleshevich";
        homepage = "https://github.com/lehins/massiv";
        url = "";
        synopsis = "Import/export of Image files into massiv Arrays";
        description = "This package contains functionality for import/export of arrays\ninto the real world. For now it only has the ability to read/write\nimage files in various formats.";
        buildType = "Simple";
      };
      components = {
        massiv-io = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.massiv
            hsPkgs.process
            hsPkgs.JuicyPixels
            hsPkgs.netpbm
            hsPkgs.vector
          ];
        };
      };
    }