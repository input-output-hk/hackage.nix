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
      specVersion = "0";
      identifier = {
        name = "Shu-thing";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>, <gwern0@gmail.com>";
      author = "Hideyuki Tanaka & Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "A vector shooter game";
      description = "A 2-D vector graphics upwards-scrolling keyboard-controlled shooter.\nYou shoot the enemies while dodging their bullets until you reach and defeat the enemy boss.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "shu-thing" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.GLUT)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }