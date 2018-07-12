{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Parallel-Arrows-Multicore";
          version = "0.1.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Martin Braun";
        author = "";
        homepage = "https://github.com/s4ke/Parrows#readme";
        url = "";
        synopsis = "GpH based backend for @Parallel-Arrows-Definition@ in a multicore variant.";
        description = "GpH based backend for @Parallel-Arrows-Definition@ in a multicore variant. Use this backend for shared-memory programs.";
        buildType = "Simple";
      };
      components = {
        "Parallel-Arrows-Multicore" = {
          depends  = [
            hsPkgs.Parallel-Arrows-Definition
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.parallel
            hsPkgs.split
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.Parallel-Arrows-BaseSpec
              hsPkgs.Parallel-Arrows-Definition
              hsPkgs.Parallel-Arrows-Multicore
              hsPkgs.base
              hsPkgs.deepseq
              hsPkgs.hspec
              hsPkgs.parallel
              hsPkgs.split
            ];
          };
        };
      };
    }