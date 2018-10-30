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
      specVersion = "1.6";
      identifier = {
        name = "hssourceinfo";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      homepage = "";
      url = "";
      synopsis = "get haskell source code info";
      description = "now only module dependencies and code line numbers\n\n> % hsmodtree xturtle/src\n> Graphics.X11.Turtle\n>   + Graphics.X11.TurtleMove\n>   |   + Graphics.X11.TurtleState\n>   |   + Graphics.X11.TurtleField\n>   + Graphics.X11.TurtleInput\n>   |   + Grahpics.X11.TurtleState\n>   + Graphics.X11.TurtleShape\n> % hscodeline xturtle/src\n> Graphics/X11/Turtle.hs          158\n> Graphics/X11/TurtleMove.hs      82\n> Graphics/X11/TurtleState.hs     54\n> Graphics/X11/TurtleField.hs     428\n> Graphics/X11/TurtleInput.hs     76\n> Graphics/X11/TurtleShape.hs     10\n> total                           808";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hsmodtree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.regexpr)
          ];
        };
        "hscodelines" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.regexpr)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }