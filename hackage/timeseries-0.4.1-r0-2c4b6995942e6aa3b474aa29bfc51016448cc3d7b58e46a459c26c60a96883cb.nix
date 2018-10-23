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
        name = "timeseries";
        version = "0.4.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Krzysztof Langner";
      maintainer = "klangner@gmail.com";
      author = "Krzysztof Langner";
      homepage = "https://github.com/klangner/timeseries";
      url = "";
      synopsis = "Library for Time Series processing";
      description = "Library for processing time series data.";
      buildType = "Simple";
    };
    components = {
      "timeseries" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cassava)
          (hsPkgs.statistics)
          (hsPkgs.text)
          (hsPkgs.text-time)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.cassava)
            (hsPkgs.statistics)
            (hsPkgs.text)
            (hsPkgs.text-time)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }