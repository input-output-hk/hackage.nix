{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "polysoup";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2012 IPI PAN";
        maintainer = "waszczuk.kuba@gmail.com";
        author = "Jakub Waszczuk";
        homepage = "https://github.com/kawu/polysoup";
        url = "";
        synopsis = "Online XML parsing with polyparse and tagsoup";
        description = "The library provides combinators for lazy, incremental XML parsing.";
        buildType = "Simple";
      };
      components = {
        "polysoup" = {
          depends  = [
            hsPkgs.base
            hsPkgs.tagsoup
            hsPkgs.polyparse
          ];
        };
      };
    }