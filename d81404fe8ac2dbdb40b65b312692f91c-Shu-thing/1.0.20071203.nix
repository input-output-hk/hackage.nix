{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "Shu-thing";
          version = "1.0.20071203";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Takayuki Muranushi <muranushi@gmail.com>, <gwern0@gmail.com>";
        author = "Hideyuki Tanaka & Takayuki Muranushi";
        homepage = "";
        url = "";
        synopsis = "A vector shooter game";
        description = "A 2-D vector graphics upwards-scrolling keyboard-controlled shooter.\nYou shoot the enemies while dodging their bullets until you reach and defeat the enemy.";
        buildType = "Simple";
      };
      components = {
        exes = {
          shu-thing = {
            depends  = [
              hsPkgs.base
              hsPkgs.GLUT
            ];
          };
        };
      };
    }