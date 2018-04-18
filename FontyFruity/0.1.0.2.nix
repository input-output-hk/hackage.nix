{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "FontyFruity";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "vincent.berthoux@gmail.com";
        author = "Vincent Berthoux";
        homepage = "";
        url = "";
        synopsis = "A true type file format loader";
        description = "An haskell Truetype file parser.\n\nYou can load a font file and extract some curves to be\ndrawed with a library like Rasterific .";
        buildType = "Simple";
      };
      components = {
        FontyFruity = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.vector
          ];
        };
      };
    }