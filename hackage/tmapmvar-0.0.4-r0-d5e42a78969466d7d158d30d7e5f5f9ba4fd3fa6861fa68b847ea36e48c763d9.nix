{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tmapmvar"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2018 Local Cooking Inc.";
      maintainer = "athan.clark@localcooking.com";
      author = "Athan Clark";
      homepage = "";
      url = "";
      synopsis = "A single-entity stateful Map in STM, similar to tmapchan";
      description = "Please see the README on Github at <https://git.localcooking.com/tooling/tmapmvar#readme>";
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
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.stm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tmapmvar)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }