{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-http";
          version = "9.1.3";
        };
        license = "MIT";
        copyright = "Copyright (c) 2011 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
        url = "";
        synopsis = "Interface to native Haskell HTTP package HTTP";
        description = "Interface to native Haskell HTTP package HTTP.\nThis package can be used as alternative for the hxt-curl package\nfor accessing documents via HTTP";
        buildType = "Simple";
      };
      components = {
        "hxt-http" = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.HTTP
            hsPkgs.hxt
          ];
        };
      };
    }