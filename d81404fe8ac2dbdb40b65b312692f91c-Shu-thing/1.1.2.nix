{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "Shu-thing";
          version = "1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Takayuki Muranushi <muranushi@gmail.com>, <gwern0@gmail.com>";
        author = "Hideyuki Tanaka & Takayuki Muranushi";
        homepage = "http://www.geocities.jp/takascience/index_en.html";
        url = "";
        synopsis = "A vector shooter game";
        description = "A 2-D vector graphics upwards-scrolling keyboard-controlled shooter.\nYou shoot the enemies while dodging their bullets until you reach and defeat the enemy boss.\n\nDarcs repo available at <http://code.haskell.org/shu-thing/>.";
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