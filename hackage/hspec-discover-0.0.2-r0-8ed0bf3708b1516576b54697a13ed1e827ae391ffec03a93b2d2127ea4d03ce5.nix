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
        name = "hspec-discover";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "(c) 2012 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Automatically discover and run Hspec tests";
      description = "Documentation is here: <https://github.com/sol/hspec-discover#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hspec)
        ];
      };
      exes = {
        "hspec-discover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-shouldbe)
          ];
        };
      };
    };
  }