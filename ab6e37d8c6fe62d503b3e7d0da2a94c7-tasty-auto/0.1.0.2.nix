{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "tasty-auto";
          version = "0.1.0.2";
        };
        license = "MIT";
        copyright = "2017 Daniel Mendler";
        maintainer = "Daniel Mendler <mail@daniel-mendler.de>";
        author = "Daniel Mendler <mail@daniel-mendler.de>";
        homepage = "https://github.com/minad/tasty-auto#readme";
        url = "";
        synopsis = "Auto discovery for Tasty with support for ingredients and test tree generation";
        description = "Auto discovery for Tasty with support for ingredients and test tree generation";
        buildType = "Simple";
      };
      components = {
        tasty-auto = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
          ];
        };
        exes = {
          tasty-auto = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.tasty-auto
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.base
              hsPkgs.tasty
              hsPkgs.tasty-auto
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-smallcheck
            ];
          };
        };
      };
    }