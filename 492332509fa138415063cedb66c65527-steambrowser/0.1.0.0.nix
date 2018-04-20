{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "steambrowser";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "hherman1@macalester.edu";
        author = "Hunter";
        homepage = "";
        url = "";
        synopsis = "List and launch steam games from the cli";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          steambrowser = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.directory
            ];
          };
        };
      };
    }