{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "state";
          version = "0.0.2";
        };
        license = "LicenseRef-LGPL";
        copyright = "Copyright (c) 2007 Evgeny Jukov";
        maintainer = "Evgeny Jukov <masloed@gmail.com>";
        author = "Evgeny Jukov";
        homepage = "http://macode.sourceforge.net";
        url = "";
        synopsis = "Data.State";
        description = "Data.State";
        buildType = "Custom";
      };
      components = {
        state = {
          depends  = [
            hsPkgs.base
            hsPkgs.arrows
            hsPkgs.mtl
          ];
        };
      };
    }