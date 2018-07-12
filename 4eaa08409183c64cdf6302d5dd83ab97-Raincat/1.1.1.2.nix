{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Raincat";
          version = "1.1.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "Garrick Chin 2008-2010";
        maintainer = "Mikhail S. Pobolovets <styx.mp@gmail.com>";
        author = "Garrick Chin, Susan Lin, SooHyun Jang, Anthony Maurice, William Wang,\nAndrew Zheng, Rachel Berkowitz, Spencer Ying, Tal Stramer, Mikhail Pobolovets,\nSergei Trofimovich";
        homepage = "http://raincat.bysusanlin.com/";
        url = "git://github.com/styx/Raincat.git";
        synopsis = "A puzzle game written in Haskell with a cat in lead role";
        description = "Project Raincat is a game developed by Carnegie Mellon students\nthrough GCS during the Fall 2008 semester. Raincat features game\nplay inspired from classics Lemmings and The Incredible Machine.\nThe project proved to be an excellent learning experience for\nthe programmers. Everything is programmed in Haskell.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "raincat" = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.extensible-exceptions
              hsPkgs.mtl
              hsPkgs.random
              hsPkgs.time
              hsPkgs.GLUT
              hsPkgs.OpenGL
              hsPkgs.SDL
              hsPkgs.SDL-image
              hsPkgs.SDL-mixer
            ];
          };
        };
      };
    }