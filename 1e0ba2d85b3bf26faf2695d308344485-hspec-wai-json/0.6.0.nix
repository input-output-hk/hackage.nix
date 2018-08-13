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
      specVersion = "1.8";
      identifier = {
        name = "hspec-wai-json";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "(c) 2012-2014 Fujimura Daisuke,\n(c) 2014 Simon Hengel";
      maintainer = "Fujimura Daisuke <me@fujimuradaisuke.com>, Simon Hengel <sol@typeful.net>";
      author = "Fujimura Daisuke <me@fujimuradaisuke.com>, Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Testing JSON APIs with hspec-wai";
      description = "Testing JSON APIs with hspec-wai";
      buildType = "Simple";
    };
    components = {
      "hspec-wai-json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec-wai)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.aeson-qq)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }