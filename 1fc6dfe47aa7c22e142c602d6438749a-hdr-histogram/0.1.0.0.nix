{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hdr-histogram";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2015 Josh Bohde";
      maintainer = "Josh Bohde <josh@joshbohde.com>";
      author = "Josh Bohde <josh@joshbohde.com>";
      homepage = "http://github.com/joshbohde/hdr-histogram#readme";
      url = "";
      synopsis = "Haskell implementation of High Dynamic Range (HDR) Histograms";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "hdr-histogram" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.primitive)
          (hsPkgs.deepseq)
          (hsPkgs.tagged)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "hdr-histogram-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hdr-histogram)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.tagged)
            (hsPkgs.vector)
            (hsPkgs.vector-algorithms)
          ];
        };
      };
      benchmarks = {
        "hdr-histogram-bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hdr-histogram)
            (hsPkgs.deepseq)
            (hsPkgs.criterion)
            (hsPkgs.primitive)
          ];
        };
      };
    };
  }