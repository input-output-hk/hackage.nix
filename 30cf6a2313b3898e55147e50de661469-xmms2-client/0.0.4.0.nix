{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xmms2-client";
          version = "0.0.4.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(C) 2009-2010 Oleg Belozeorov";
        maintainer = "Oleg Belozeorov <upwawet@gmail.com>";
        author = "Oleg Belozeorov";
        homepage = "";
        url = "";
        synopsis = "An XMMS2 client library.";
        description = "This package provides an interface to the X-platform Music Multiplexing\nSystem 2 (http://xmms2.xmms.se) client API, thus allowing to write XMMS2\nclients in Haskell. It contains (nearly) 1-to-1 bindings to the XMMS2\nclient API and a higher level interface.";
        buildType = "Simple";
      };
      components = {
        xmms2-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.utf8-string
            hsPkgs.mtl
            hsPkgs.containers
          ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }