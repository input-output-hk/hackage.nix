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
      specVersion = "1.10";
      identifier = {
        name = "freer-simple-random";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2018 Ben Weitzman";
      maintainer = "ben@costarastrology.com";
      author = "Ben Weitzman";
      homepage = "";
      url = "";
      synopsis = "Random number generators using freer-simple";
      description = "Please see the README on Gitlab at <https://gitlab.com/costar-astrology/freer-simple-contrib/tree/master/freer-simple-random>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.freer-simple)
          (hsPkgs.random)
        ];
      };
      tests = {
        "freer-simple-random-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.freer-simple)
            (hsPkgs.freer-simple-random)
            (hsPkgs.hspec)
            (hsPkgs.random)
          ];
        };
      };
    };
  }