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
        name = "left4deadrl";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "left4dead-inspired roguelike";
      description = "a zombie game written with hscharm";
      buildType = "Simple";
    };
    components = {
      exes = {
        "left4deadrl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.hscharm)
          ];
        };
      };
    };
  }