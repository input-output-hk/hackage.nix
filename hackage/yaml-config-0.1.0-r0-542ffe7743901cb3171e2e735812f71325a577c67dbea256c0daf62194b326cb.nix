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
      specVersion = "1.14";
      identifier = {
        name = "yaml-config";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "Selectel";
      maintainer = "mitroshin@selectel.org";
      author = "Fedor Gogolev <knsd@knsd.net>\nMitroshin Maxim <mitroshin@selectel.org>\nSimon Hengel <sol@typeful.net>";
      homepage = "";
      url = "";
      synopsis = "Configuration management";
      description = "Configuration management";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.yaml)
          (hsPkgs.failure)
        ];
      };
      tests = {
        "howl-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.failure)
            (hsPkgs.hashable)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }