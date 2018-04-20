{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Monadius";
          version = "0.94";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Takayuki Muranushi & Hideyuki Tanaka";
        homepage = "http://www.geocities.jp/takascience/haskell/monadius_en.html";
        url = "";
        synopsis = "2-D arcade scroller";
        description = "A fast-paced 2-D scrolling vector graphics clone of the arcade game Gradius;\nit is dedicated to the 20th anniversary of Gradius series.";
        buildType = "Simple";
      };
      components = {
        exes = {
          monadius = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.directory
              hsPkgs.GLUT
              hsPkgs.OpenGL
            ];
          };
        };
      };
    }