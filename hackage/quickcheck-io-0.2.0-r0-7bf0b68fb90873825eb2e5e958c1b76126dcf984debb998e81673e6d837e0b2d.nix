{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "quickcheck-io"; version = "0.2.0"; };
      license = "MIT";
      copyright = "(c) 2013-2017 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "https://github.com/hspec/quickcheck-io#readme";
      url = "";
      synopsis = "Use HUnit assertions as QuickCheck properties";
      description = "This package provides an orphan instance that allows you to\nuse HUnit assertions as QuickCheck properties.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.QuickCheck) (hsPkgs.HUnit) (hsPkgs.base) ];
        };
      };
    }