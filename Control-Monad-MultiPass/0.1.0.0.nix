{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Control-Monad-MultiPass";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Kevin Backhouse, 2013";
        maintainer = "Kevin.Backhouse@gmail.com";
        author = "Kevin Backhouse";
        homepage = "https://github.com/kevinbackhouse/Control-Monad-MultiPass";
        url = "";
        synopsis = "A Library for Writing Multi-Pass Algorithms.";
        description = "The MultiPass library supports a monadic programming\nidiom in which multi-pass algorithms are written\nin a single-pass style.";
        buildType = "Simple";
      };
      components = {
        Control-Monad-MultiPass = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.Control-Monad-ST2
          ];
        };
        tests = {
          Main = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.QuickCheck
              hsPkgs.Control-Monad-ST2
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }