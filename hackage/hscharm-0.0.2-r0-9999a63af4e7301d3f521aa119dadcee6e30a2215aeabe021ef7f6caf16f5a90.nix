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
        name = "hscharm";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "minimal ncurses-like library";
      description = "A basic ncurses-like library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "hellocharm" = {
          depends  = [ (hsPkgs.base) ];
        };
        "rl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
          ];
        };
        "ddr" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
          ];
        };
      };
    };
  }