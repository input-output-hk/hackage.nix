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
        name = "interpolate";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2013-2015 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/sol/interpolate#readme";
      url = "";
      synopsis = "String interpolation done right";
      description = "String interpolation done right";
      buildType = "Simple";
    };
    components = {
      "interpolate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }