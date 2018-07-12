{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-hslogger";
          version = "1.0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Parnell Springmeyer";
        maintainer = "parnell@digitalmentat.com";
        author = "Parnell Springmeyer";
        homepage = "https://github.com/ixmatus/snaplet-logger";
        url = "http://hackage.haskell.org/package/snaplet-hslogger";
        synopsis = "Snap framework snaplet for the Logger API library.";
        description = "<<https://travis-ci.org/ixmatus/snaplet-hslogger.svg?branch=master>>\n\n`snaplet-hslogger` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell HSLogger\npackage.\n\nPlease refer to the README for an example - Cabal descriptions don't\nmake it easy to do so.";
        buildType = "Simple";
      };
      components = {
        "snaplet-hslogger" = {
          depends  = [
            hsPkgs.base
            hsPkgs.snap
            hsPkgs.hslogger
            hsPkgs.transformers
            hsPkgs.configurator
            hsPkgs.mtl
          ];
        };
      };
    }