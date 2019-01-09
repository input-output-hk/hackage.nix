{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "ctrie"; version = "0.1.0.3"; };
      license = "MIT";
      copyright = "(c) 2013-2015 Michael Schröder";
      maintainer = "mc.schroeder@gmail.com";
      author = "Michael Schröder";
      homepage = "https://github.com/mcschroeder/ctrie";
      url = "";
      synopsis = "Non-blocking concurrent map";
      description = "A non-blocking concurrent map implementation based on\n/lock-free concurrent hash tries/ (aka /Ctries/).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.atomic-primops)
          (hsPkgs.hashable)
          (hsPkgs.primitive)
          ];
        };
      tests = {
        "map-properties" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.ctrie)
            ];
          };
        };
      benchmarks = {
        "sequential" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hashable)
            (hsPkgs.random)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.ctrie)
            ];
          };
        "concurrent" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.async)
            (hsPkgs.hashable)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
            (hsPkgs.ctrie)
            (hsPkgs.stm)
            ];
          };
        };
      };
    }