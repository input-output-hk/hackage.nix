{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "retryer";
          version = "0.1.0.1";
        };
        license = "MPL-2.0";
        copyright = "";
        maintainer = "dgonyeo@csh.rit.edu";
        author = "Derek Gonyeo";
        homepage = "https://github.com/dgonyeo/retryer";
        url = "";
        synopsis = "Retry failed commands";
        description = "Takes a command and keeps rerunning it until it returns\nsuccessfully. Has flags to limit number of retries and\nsleep between retires.";
        buildType = "Simple";
      };
      components = {
        exes = {
          retryer = {
            depends  = [
              hsPkgs.base
              hsPkgs.process
              hsPkgs.optparse-applicative
            ];
          };
        };
      };
    }