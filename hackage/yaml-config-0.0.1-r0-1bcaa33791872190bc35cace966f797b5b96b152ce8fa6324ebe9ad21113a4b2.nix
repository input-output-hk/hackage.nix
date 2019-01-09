{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "yaml-config"; version = "0.0.1"; };
      license = "MIT";
      copyright = "Selectel";
      maintainer = "mitroshin@selectel.org";
      author = "Fedor Gogolev <knsd@knsd.net>\nMitroshin Maxim <mitroshin@selectel.org>";
      homepage = "";
      url = "";
      synopsis = "Configuration management";
      description = "Configuration management";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.unordered-containers)
          (hsPkgs.text)
          (hsPkgs.yaml)
          ];
        };
      tests = {
        "howl-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.unordered-containers)
            (hsPkgs.text)
            (hsPkgs.yaml)
            (hsPkgs.hashable)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }