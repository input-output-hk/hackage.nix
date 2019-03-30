{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "flush-queue"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 FP Complete";
      maintainer = "alexey@fpcomplete.com";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/fpco/flush-queue#readme";
      url = "";
      synopsis = "Concurrent bouded blocking queues optimized for flushing. Both IO and STM implementations.";
      description = "Please see the README on GitHub at <https://github.com/fpco/flush-queue#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.stm)
          (hsPkgs.atomic-primops)
          (hsPkgs.containers)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.stm)
            (hsPkgs.flush-queue)
            (hsPkgs.QuickCheck)
            (hsPkgs.hspec)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.stm)
            (hsPkgs.async)
            (hsPkgs.flush-queue)
            (hsPkgs.old-time)
            (hsPkgs.deepseq)
            ];
          };
        };
      };
    }