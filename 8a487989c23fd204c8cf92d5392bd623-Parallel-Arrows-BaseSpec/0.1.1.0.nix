{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Parallel-Arrows-BaseSpec";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Martin Braun";
        author = "";
        homepage = "https://github.com/s4ke/Parrows#readme";
        url = "";
        synopsis = "BaseSpecs used for @Parallel-Arrows-Definition@ and Co.";
        description = "BaseSpecs used for @Parallel-Arrows-Definition@ and Co. This package contains tests for basic features and even skeletons. See the tests for the dummy backend (from @Parallel-Arrows-Definition@) in @src/test@ or one of the backends (e.g. @Parallel-Arrows-Multicore@) for actual implementations.";
        buildType = "Simple";
      };
      components = {
        Parallel-Arrows-BaseSpec = {
          depends  = [
            hsPkgs.Parallel-Arrows-Definition
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.hspec
            hsPkgs.split
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.Parallel-Arrows-BaseSpec
              hsPkgs.Parallel-Arrows-Definition
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.split
            ];
          };
        };
      };
    }