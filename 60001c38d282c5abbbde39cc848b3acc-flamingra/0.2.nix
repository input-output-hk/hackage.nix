{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flamingra";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "me@lelf.lu";
        author = "Antonio Nikishaev";
        homepage = "";
        url = "";
        synopsis = "FlameGraphs of profiling";
        description = "Hack to turn the profiling output into the format suitable for FlameGraph.";
        buildType = "Simple";
      };
      components = {
        flamingra = {
          depends  = [ hsPkgs.base ];
        };
        exes = {
          flamingra = {
            depends  = [
              hsPkgs.base
              hsPkgs.pipes
              hsPkgs.optparse-applicative
              hsPkgs.either
            ];
          };
        };
      };
    }