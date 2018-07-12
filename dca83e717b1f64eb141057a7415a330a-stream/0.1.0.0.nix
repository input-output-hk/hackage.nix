{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "stream";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2016 FP Complete";
        maintainer = "michael@fpcomplete.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/githubuser/stream#readme";
        url = "";
        synopsis = "Initial project template from stack";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "stream" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.exceptions
            hsPkgs.mtl
            hsPkgs.streaming-commons
            hsPkgs.transformers
          ];
        };
        tests = {
          "stream-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.stream
              hsPkgs.temporary
            ];
          };
        };
        benchmarks = {
          "stream-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.ghc-prim
              hsPkgs.stream
              hsPkgs.temporary
              hsPkgs.vector
            ];
          };
        };
      };
    }