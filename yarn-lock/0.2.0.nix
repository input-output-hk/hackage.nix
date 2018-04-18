{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "yarn-lock";
          version = "0.2.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mail@profpatsch.de";
        author = "Profpatsch";
        homepage = "https://github.com/Profpatsch/yarn-lock#readme";
        url = "";
        synopsis = "Represent and parse yarn.lock files";
        description = "Types and parser for the lock file format of the npm successor yarn.";
        buildType = "Simple";
      };
      components = {
        yarn-lock = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.megaparsec
            hsPkgs.protolude
          ];
        };
        tests = {
          yarn-lock-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.megaparsec
              hsPkgs.protolude
              hsPkgs.yarn-lock
              hsPkgs.ansi-wl-pprint
              hsPkgs.tasty
              hsPkgs.tasty-th
              hsPkgs.tasty-hunit
              hsPkgs.protolude
            ];
          };
        };
      };
    }