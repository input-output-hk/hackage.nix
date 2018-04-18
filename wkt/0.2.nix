{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wkt";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Ben Gamari";
        maintainer = "bgamari.foss@gmail.com";
        author = "Ben Gamari";
        homepage = "http://github.com/bgamari/wkt";
        url = "";
        synopsis = "Parsers and types for Well-Known Text data";
        description = "Parsers and types for Well-Known Text data";
        buildType = "Simple";
      };
      components = {
        wkt = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
            hsPkgs.linear
            hsPkgs.parsec
            hsPkgs.parsec-numbers
          ];
        };
      };
    }