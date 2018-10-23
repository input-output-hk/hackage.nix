{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "burst-detection";
        version = "1.0";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2013 Parallel Scientific Labs, LLC";
      maintainer = "alexander.vershilov@parsci.com";
      author = "serguey.zefirov@parsci.com";
      homepage = "http://parsci.com/";
      url = "";
      synopsis = "Burst detection algorithms";
      description = "Library implements burst detection algorithms that follows\n\nZhang, X. (2006). Fast Algorithms for Burst Detection. Thesis. New York University.";
      buildType = "Simple";
    };
    components = {
      "burst-detection" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
        ];
      };
      tests = {
        "simple-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.burst-detection)
          ];
        };
      };
      benchmarks = {
        "c-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.burst-detection)
          ];
        };
      };
    };
  }