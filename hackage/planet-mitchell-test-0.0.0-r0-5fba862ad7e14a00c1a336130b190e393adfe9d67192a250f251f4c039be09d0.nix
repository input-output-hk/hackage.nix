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
      specVersion = "2.0";
      identifier = {
        name = "planet-mitchell-test";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2018, Mitchell Rosen";
      maintainer = "Mitchell Rosen <mitchellwrosen@gmail.com>";
      author = "Mitchell Rosen";
      homepage = "https://github.com/mitchellwrosen/planet-mitchell";
      url = "";
      synopsis = "Planet Mitchell";
      description = "Companion package of <https://hackage.haskell.org/package/planet-mitchell planet-mitchell>,\nfor testing and benchmarking.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.gauge)
          (hsPkgs.hedgehog)
          (hsPkgs.hspec-expectations)
          (hsPkgs.tasty)
          (hsPkgs.tasty-hedgehog)
          (hsPkgs.tasty-hunit)
          (hsPkgs.tasty-rerun)
          (hsPkgs.weigh)
        ];
      };
    };
  }