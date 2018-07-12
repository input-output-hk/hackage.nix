{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pong-server";
          version = "0.0.4.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2017 Robert Fischer";
        maintainer = "smokejumperit+pong-server@gmail.com";
        author = "Robert Fischer";
        homepage = "http://github.com/RobertFischer/pong-server#readme";
        url = "";
        synopsis = "A simple embedded pingable server that runs in the background.";
        description = "A simple embedded pingable server that runs in the background. Details in the README on GitHub.";
        buildType = "Simple";
      };
      components = {
        "pong-server" = {
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
          "pong-server-test" = {
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