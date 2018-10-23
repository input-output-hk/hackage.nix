{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "text-metrics";
        version = "0.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/text-metrics";
      url = "";
      synopsis = "Calculate various string metrics efficiently";
      description = "Calculate various string metrics efficiently.";
      buildType = "Simple";
    };
    components = {
      "text-metrics" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.text-metrics)
          ];
        };
      };
      benchmarks = {
        "bench-speed" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.text-metrics)
          ];
        };
        "bench-memory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.text)
            (hsPkgs.text-metrics)
            (hsPkgs.weigh)
          ];
        };
      };
    };
  }