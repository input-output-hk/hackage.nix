{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hspec-wai";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2014 Fujimura Daisuke,\n(c) 2014 Simon Hengel";
      maintainer = "Fujimura Daisuke <me@fujimuradaisuke.com>, Simon Hengel <sol@typeful.net>";
      author = "Fujimura Daisuke <me@fujimuradaisuke.com>, Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Experimental Hspec support for testing WAI applications (depends on hspec2!)";
      description = "Experimental Hspec support for testing WAI applications (depends on hspec2!)";
      buildType = "Simple";
    };
    components = {
      "hspec-wai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.http-types)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.hspec2)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.http-types)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.hspec2)
            (hsPkgs.hspec-meta)
          ];
        };
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec2)
            (hsPkgs.hspec-wai)
            (hsPkgs.http-types)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }