{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pong-server";
          version = "0.0.2.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "2016 Robert Fischer";
        maintainer = "smokejumperit+pong-server@gmail.com";
        author = "Robert Fischer";
        homepage = "http://github.com/RobertFischer/pong-server#readme";
        url = "";
        synopsis = "A simple embedded pingable server that runs in the background.";
        description = "Please see README.md on GitHub";
        buildType = "Simple";
      };
      components = {
        pong-server = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.data-default
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