{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "socket-unix";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "2017 Vyacheslav Hashov";
        maintainer = "vyacheslavhashov@gmail.com";
        author = "Vyacheslav Hashov";
        homepage = "https://github.com/vyacheslavhashov/haskell-socket-unix#readme";
        url = "";
        synopsis = "Unix domain sockets";
        description = "A Unix domain socket extension for the socket library";
        buildType = "Simple";
      };
      components = {
        "socket-unix" = {
          depends  = [
            hsPkgs.base
            hsPkgs.socket
            hsPkgs.bytestring
          ];
        };
        tests = {
          "default" = {
            depends  = [
              hsPkgs.base
              hsPkgs.socket
              hsPkgs.socket-unix
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.bytestring
              hsPkgs.unix
              hsPkgs.async
            ];
          };
          "threaded" = {
            depends  = [
              hsPkgs.base
              hsPkgs.socket
              hsPkgs.socket-unix
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.bytestring
              hsPkgs.unix
              hsPkgs.async
            ];
          };
        };
      };
    }