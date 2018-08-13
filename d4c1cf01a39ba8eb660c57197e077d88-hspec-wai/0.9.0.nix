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
        name = "hspec-wai";
        version = "0.9.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2014 Fujimura Daisuke,\n(c) 2014-2015 Simon Hengel";
      maintainer = "Fujimura Daisuke <me@fujimuradaisuke.com>,\nSimon Hengel <sol@typeful.net>";
      author = "Fujimura Daisuke <me@fujimuradaisuke.com>,\nSimon Hengel <sol@typeful.net>";
      homepage = "https://github.com/hspec/hspec-wai#readme";
      url = "";
      synopsis = "Experimental Hspec support for testing WAI applications";
      description = "Experimental Hspec support for testing WAI applications";
      buildType = "Simple";
    };
    components = {
      "hspec-wai" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.hspec-core)
          (hsPkgs.hspec-expectations)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec-expectations)
            (hsPkgs.http-types)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }