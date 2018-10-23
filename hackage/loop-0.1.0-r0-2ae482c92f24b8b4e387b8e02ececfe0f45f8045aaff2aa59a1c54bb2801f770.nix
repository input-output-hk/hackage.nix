{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "loop";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2014 Niklas Hambüchen <mail@nh2.me>";
      maintainer = "Niklas Hambüchen <mail@nh2.me>";
      author = "Niklas Hambüchen <mail@nh2.me>";
      homepage = "https://github.com/nh2/loop";
      url = "";
      synopsis = "Fast loops (for when GHC can't optimize forM_)";
      description = "This package provides a convenient and fast alternative to the common\n`forM_ [1..n]` idiom, which in many cases GHC cannot fuse to efficient\ncode.\n\nSee https://ghc.haskell.org/trac/ghc/ticket/8763.";
      buildType = "Simple";
    };
    components = {
      "loop" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.loop)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.loop)
            (hsPkgs.criterion)
            (hsPkgs.random)
            (hsPkgs.vector)
          ];
        };
        "bench-traverse-w32" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.loop)
            (hsPkgs.criterion)
            (hsPkgs.vector)
          ];
        };
        "bench-foldl-and-iorefs-are-slow" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }