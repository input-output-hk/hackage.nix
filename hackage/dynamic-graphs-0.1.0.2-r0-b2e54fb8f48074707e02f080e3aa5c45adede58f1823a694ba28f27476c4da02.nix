{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-extra-executables = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "dynamic-graphs"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 Alex Lang, Jasper Van der Jeugt";
      maintainer = "me@alang.ca";
      author = "Alex Lang, Jasper Van der Jeugt";
      homepage = "http://github.com/alang9/dynamic-graphs";
      url = "";
      synopsis = "Dynamic graph algorithms";
      description = "A library for dynamic graph algorithms, and in particular\ndynamic connectivity.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.hashtables)
          (hsPkgs.mwc-random)
          (hsPkgs.primitive)
          (hsPkgs.semigroups)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "dynamic-graphs-simple" = {
          depends = [
            (hsPkgs.dynamic-graphs)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.primitive)
            ];
          };
        "bench-program" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.dynamic-graphs)
            (hsPkgs.hashable)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        "gen-program" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.dynamic-graphs)
            (hsPkgs.hashable)
            (hsPkgs.primitive)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "dynamic-graphs-tests" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.dynamic-graphs)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mwc-random)
            (hsPkgs.hashable)
            (hsPkgs.unordered-containers)
            (hsPkgs.primitive)
            (hsPkgs.text)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      benchmarks = {
        "dynamic-graphs-benchmarks" = {
          depends = [
            (hsPkgs.dynamic-graphs)
            (hsPkgs.primitive)
            (hsPkgs.base)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }