{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      clock = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tasty";
        version = "1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "https://github.com/feuerbach/tasty";
      url = "";
      synopsis = "Modern and extensible testing framework";
      description = "Tasty is a modern testing framework for Haskell.\nIt lets you combine your unit tests, golden\ntests, QuickCheck/SmallCheck properties, and any\nother types of tests into a single test suite.";
      buildType = "Simple";
    };
    components = {
      "tasty" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.optparse-applicative)
          (hsPkgs.unbounded-delays)
          (hsPkgs.async)
          (hsPkgs.ansi-terminal)
        ] ++ (if _flags.clock
          then [ (hsPkgs.clock) ]
          else [
            (hsPkgs.time)
          ])) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "7.6") (hsPkgs.ghc-prim)) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }