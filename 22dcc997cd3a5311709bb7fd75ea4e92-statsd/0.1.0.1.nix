{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "statsd";
          version = "0.1.0.1";
        };
        license = "LGPL-3.0-only";
        copyright = "Copyright (C) 2014 Mitchell Rosen";
        maintainer = "mitchellwrosen@gmail.com";
        author = "Mitchell Rosen";
        homepage = "https://github.com/mitchellwrosen/statsd-haskell";
        url = "";
        synopsis = "StatsD API.";
        description = "This package provides a simple interface to <https://github.com/etsy/statsd/ StatsD>.";
        buildType = "Simple";
      };
      components = {
        "statsd" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.random
          ];
        };
      };
    }