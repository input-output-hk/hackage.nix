{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "MazesOfMonad";
        version = "1.0.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jpmoresmau@gmail.com";
      author = "JP Moresmau";
      homepage = "";
      url = "";
      synopsis = "Console-based Role Playing Game";
      description = "MazesOfMonad is a console-based Role Playing Game. You create characters\nwith their strong and weak points, and try to complete mazes that are randomly generated. You can pick up gold and items on the way,\nmeet monsters, and deal with them as you want. You can fight, use magic, bribe, trade, steal... This is only a simple game that I did to see what building a\nfull blown Haskell application is like to develop. Versions 1.0.5 and above are complete and working.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mazesofmonad" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.random)
            (hsPkgs.regex-posix)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.pretty)
            (hsPkgs.array)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.time)
          ];
        };
      };
    };
  }