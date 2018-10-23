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
        name = "infer-license";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2018 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Infer software license from a given license file";
      description = "";
      buildType = "Simple";
    };
    components = {
      "infer-license" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.text-metrics)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.infer-license)
            (hsPkgs.text)
            (hsPkgs.text-metrics)
          ];
        };
      };
    };
  }