{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "workdays";
          version = "0.1.1";
        };
        license = "MIT";
        copyright = "2016 Stack Builders";
        maintainer = "hackage@stackbuilders.com";
        author = "Juan Pedro Villa Isaza";
        homepage = "https://github.com/stackbuilders/workdays";
        url = "";
        synopsis = "Workday calculations";
        description = "Workday calculations. Please see the README.md file.";
        buildType = "Simple";
      };
      components = {
        workdays = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
          ];
        };
        tests = {
          specs = {
            depends  = [
              hsPkgs.base
              hsPkgs.workdays
              hsPkgs.containers
              hsPkgs.hspec
            ];
          };
          examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
            ];
          };
        };
      };
    }