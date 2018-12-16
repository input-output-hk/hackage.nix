{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "logging-facade";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2014-2017 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/sol/logging-facade#readme";
      url = "";
      synopsis = "Simple logging abstraction that allows multiple back-ends";
      description = "Simple logging abstraction that allows multiple back-ends";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.logging-facade)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }