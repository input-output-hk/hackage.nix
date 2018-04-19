{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.7";
        identifier = {
          name = "Foster";
          version = "1.1.1";
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