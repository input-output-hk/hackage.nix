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
      specVersion = "1.8";
      identifier = {
        name = "depends";
        version = "0.0.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "A simple configuration management tool for Haskell";
      description = "A simple configuration management tool for Haskell that uses\nconvention over configuration.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "depends" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.yaml-config)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.containers)
            (hsPkgs.transformers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.yaml-config)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }