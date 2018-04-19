{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pong-server";
          version = "0.0.4.2";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2017 Robert Fischer";
        maintainer = "smokejumperit+pong-server@gmail.com";
        author = "Robert Fischer";
        homepage = "http://github.com/RobertFischer/pong-server#readme";
        url = "";
        synopsis = "A simple embedded pingable server that runs in the background.";
        description = "A useful Haskell library for running a pingable server within another application, which is useful for health checks and the like. This library runs a background server that listens on a port, and when a connection comes in, it writes \"pong\" and closes the connection. Details in the README on GitHub.";
        buildType = "Simple";
      };
      components = {
        pong-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.classy-prelude
            hsPkgs.bytestring
            hsPkgs.http-types
            hsPkgs.exceptions
            hsPkgs.monad-control
          ];
        };
        tests = {
          pong-server-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.pong-server
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.network
            ];
          };
        };
      };
    }