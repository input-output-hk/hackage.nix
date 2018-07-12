{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lens-utils";
          version = "1.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2015 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/lens-utils";
        url = "";
        synopsis = "Collection of missing lens utilities.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "lens-utils" = {
          depends  = [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
      };
    }