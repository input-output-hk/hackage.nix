{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wuss";
          version = "1.0.2";
        };
        license = "MIT";
        copyright = "2015 Taylor Fausak <taylor@fausak.me>";
        maintainer = "Taylor Fausak <taylor@fausak.me>";
        author = "Taylor Fausak <taylor@fausak.me>";
        homepage = "http://taylor.fausak.me/wuss/";
        url = "";
        synopsis = "Secure WebSocket (WSS) clients";
        description = "Wuss is a library that lets you easily create secure WebSocket clients over\nthe WSS protocol. It is a small addition to\n<https://hackage.haskell.org/package/websockets the websockets package>\nand is adapted from existing solutions by\n<https://gist.github.com/jaspervdj/7198388 @jaspervdj>,\n<https://gist.github.com/mpickering/f1b7ba3190a4bb5884f3 @mpickering>, and\n<https://gist.github.com/elfenlaid/7b5c28065e67e4cf0767 @elfenlaid>.";
        buildType = "Simple";
      };
      components = {
        "wuss" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.connection
            hsPkgs.network
            hsPkgs.websockets
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.wuss
            ];
          };
        };
      };
    }