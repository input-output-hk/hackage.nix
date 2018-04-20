{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hxt-http";
          version = "9.1.5.1";
        };
        license = "MIT";
        copyright = "Copyright (c) 2011 Uwe Schmidt";
        maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
        author = "Uwe Schmidt";
        homepage = "https://github.com/UweSchmidt/hxt";
        url = "";
        synopsis = "Interface to native Haskell HTTP package HTTP";
        description = "Interface to native Haskell HTTP package HTTP.\nThis package can be used as alternative for the hxt-curl package\nfor accessing documents via HTTP.\n\nChanges to 9.1.3: New warnings from ghc-7.4 removed";
        buildType = "Simple";
      };
      components = {
        hxt-http = {
          depends  = [
            hsPkgs.base
            hsPkgs.parsec
            hsPkgs.bytestring
            hsPkgs.HTTP
            hsPkgs.hxt
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network-uri
              hsPkgs.network
            ]
            else [ hsPkgs.network ]);
        };
      };
    }