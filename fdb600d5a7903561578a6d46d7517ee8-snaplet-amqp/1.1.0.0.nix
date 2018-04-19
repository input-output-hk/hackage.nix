{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-amqp";
          version = "1.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2014 Parnell Springmeyer";
        maintainer = "parnell@digitalmentat.com";
        author = "Parnell Springmeyer";
        homepage = "https://github.com/ixmatus/snaplet-amqp";
        url = "http://hackage.haskell.org/package/snaplet-amqp";
        synopsis = "Snap framework snaplet for the AMQP library";
        description = "<<https://travis-ci.org/ixmatus/snaplet-amqp.svg?branch=master>>\n\n`snaplet-amqp` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell AMQP\npackage.\n\nPlease refer to the README for an example - Cabal descriptions don't\nmake it easy to do so.";
        buildType = "Simple";
      };
      components = {
        snaplet-amqp = {
          depends  = [
            hsPkgs.base
            hsPkgs.snap
            hsPkgs.resource-pool
            hsPkgs.monad-control
            hsPkgs.amqp
            hsPkgs.bytestring
            hsPkgs.lens
            hsPkgs.transformers
            hsPkgs.configurator
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
      };
    }