{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "entwine"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Ambiata.";
      maintainer = "Tim McGilchrist <timmcgil@gmail.com>";
      author = "Ambiata <info@ambiata.com>";
      homepage = "https://github.com/tmcgilchrist/entwine";
      url = "";
      synopsis = "entwine - Concurrency tools";
      description = "Entwine provides concurrency types and tools for building correct software.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.clock)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.exceptions)
          (hsPkgs.monad-loops)
          (hsPkgs.retry)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-either)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.entwine)
            (hsPkgs.async)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-either)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        "test-io" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.entwine)
            (hsPkgs.async)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.transformers-either)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.entwine)
            (hsPkgs.criterion)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.quickcheck-properties)
            (hsPkgs.quickcheck-text)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.transformers-either)
            ];
          };
        };
      };
    }