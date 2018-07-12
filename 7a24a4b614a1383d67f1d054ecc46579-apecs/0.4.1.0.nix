{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "apecs";
          version = "0.4.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jonascarpay@gmail.com";
        author = "Jonas Carpay";
        homepage = "https://github.com/jonascarpay/apecs#readme";
        url = "";
        synopsis = "Fast ECS framework for game programming";
        description = "Apecs is an Entity Component System framework, suitable for high-performance game programming.";
        buildType = "Simple";
      };
      components = {
        "apecs" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.template-haskell
            hsPkgs.async
            hsPkgs.vector
          ];
        };
        tests = {
          "apecs-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.apecs
              hsPkgs.QuickCheck
              hsPkgs.criterion
              hsPkgs.linear
              hsPkgs.containers
              hsPkgs.vector
            ];
          };
        };
        benchmarks = {
          "apecs-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.apecs
              hsPkgs.criterion
              hsPkgs.linear
            ];
          };
        };
      };
    }