{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "XMMS";
          version = "0.1.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "waterlaz@gmail.com";
        author = "Vodolazskiy Evgeniy";
        homepage = "http://kawais.org.ua/XMMS/";
        url = "";
        synopsis = "XMMS2 client library.";
        description = "Provides the haskell client lib for XMMS2";
        buildType = "Simple";
      };
      components = {
        XMMS = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
          libs = [
            pkgs.xmmsclient
            pkgs.xmmsclient-glib
          ];
        };
      };
    }