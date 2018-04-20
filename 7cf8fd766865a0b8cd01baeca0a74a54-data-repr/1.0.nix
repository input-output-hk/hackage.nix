{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-repr";
          version = "1.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2014 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/data-repr";
        url = "";
        synopsis = "Alternative to Show data printing utility.";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-repr = {
          depends  = [
            hsPkgs.base
            hsPkgs.generic-deriving
            hsPkgs.lens
          ];
        };
      };
    }