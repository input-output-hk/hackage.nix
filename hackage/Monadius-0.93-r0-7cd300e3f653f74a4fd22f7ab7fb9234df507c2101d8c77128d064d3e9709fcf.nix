{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "Monadius";
        version = "0.93";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Takayuki Muranushi <muranushi@gmail.com>";
      author = "Hideyuki Tanaka & Takayuki Muranushi";
      homepage = "http://www.geocities.jp/takascience/haskell/monadius_en.html";
      url = "";
      synopsis = "2-D arcade scroller";
      description = "A fast-paced 2-D scrolling vector graphics clone of the arcade game Gradius;\nit is dedicated to the 20th anniversary of Gradius series.\n\nThe Darcs repo is available at <http://code.haskell.org/monadius/>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "monadius" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.directory)
            (hsPkgs.GLUT)
            (hsPkgs.OpenGL)
          ];
        };
      };
    };
  }