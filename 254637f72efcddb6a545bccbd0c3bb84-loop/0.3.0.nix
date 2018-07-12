{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "loop";
          version = "0.3.0";
        };
        license = "MIT";
        copyright = "2014 Niklas Hambüchen <mail@nh2.me>";
        maintainer = "Niklas Hambüchen <mail@nh2.me>";
        author = "Niklas Hambüchen <mail@nh2.me>";
        homepage = "https://github.com/nh2/loop";
        url = "";
        synopsis = "Fast loops (for when GHC can't optimize forM_)";
        description = "This package provides a convenient and fast alternative to the common\n`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient\ncode.\n\nSee <https://ghc.haskell.org/trac/ghc/ticket/8763>.";
        buildType = "Simple";
      };
      components = {
        "loop" = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.loop
              hsPkgs.hspec
              hsPkgs.mtl
            ];
          };
        };
        benchmarks = {
          "bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.loop
              hsPkgs.criterion
              hsPkgs.random
              hsPkgs.vector
              hsPkgs.foldl
            ];
          };
          "bench-folds" = {
            depends  = [
              hsPkgs.base
              hsPkgs.loop
              hsPkgs.criterion
              hsPkgs.mtl
            ];
          };
          "bench-traverse-w32" = {
            depends  = [
              hsPkgs.base
              hsPkgs.loop
              hsPkgs.criterion
              hsPkgs.vector
            ];
          };
          "bench-foldl-and-iorefs-are-slow" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.vector
            ];
          };
        };
      };
    }