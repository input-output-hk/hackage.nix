{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tmapmvar"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2017 Athan Clark";
      maintainer = "athan.clark@gmail.com";
      author = "Athan Clark";
      homepage = "https://github.com/athanclark/tmapmvar#readme";
      url = "";
      synopsis = "A single-entity stateful Map in STM, similar to tmapchan";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.stm)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "tmapmvar-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tmapmvar)
            (hsPkgs.async)
            (hsPkgs.containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }