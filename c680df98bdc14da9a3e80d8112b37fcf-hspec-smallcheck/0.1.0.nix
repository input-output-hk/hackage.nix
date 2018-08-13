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
        name = "hspec-smallcheck";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "";
      homepage = "http://hspec.github.io/";
      url = "";
      synopsis = "SmallCheck support for the Hspec testing framework";
      description = "SmallCheck support for the Hspec testing framework";
      buildType = "Simple";
    };
    components = {
      "hspec-smallcheck" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec)
          (hsPkgs.smallcheck)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.smallcheck)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }