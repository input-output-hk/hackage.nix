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
        name = "inject";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Simon Hengel";
      maintainer = "Simon Hengel <sol@typeful.net>";
      author = "Simon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "A minimalistic template engine";
      description = "Inject expands shell commands in arbitrary text templates.\n\n<https://github.com/sol/inject#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.attoparsec)
        ];
      };
      exes = {
        "inject" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.inject)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
          ];
        };
      };
    };
  }