{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Foster";
          version = "1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "notjefff@gmail.com";
        author = "Jefffrey";
        homepage = "";
        url = "";
        synopsis = "Utilities to generate and solve puzzles";
        description = "Utilities to generate and solve puzzles";
        buildType = "Simple";
      };
      components = {
        exes = {
          foster = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.cmdtheline
              hsPkgs.strict
            ];
          };
        };
        benchmarks = {
          foster-benchmark = {
            depends  = [
              hsPkgs.base
              hsPkgs.random
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.cmdtheline
              hsPkgs.strict
              hsPkgs.criterion
            ];
          };
        };
      };
    }