{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "xmms2-client-glib";
          version = "0.0.4.0";
        };
        license = "LGPL-3.0-only";
        copyright = "(C) 2009-2010 Oleg Belozeorov";
        maintainer = "Oleg Belozeorov <upwawet@gmail.com>";
        author = "Oleg Belozeorov";
        homepage = "";
        url = "";
        synopsis = "An XMMS2 client library — GLib integration.";
        description = "This package provides an interface to the X-platform Music Multiplexing\nSystem 2 (http://xmms2.xmms.se) client GLib integration API.";
        buildType = "Simple";
      };
      components = {
        xmms2-client-glib = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.xmms2-client
          ];
          build-tools = [ hsPkgs.c2hs ];
        };
      };
    }