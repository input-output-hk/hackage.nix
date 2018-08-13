{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      use-pkgconfig = false;
      force-narrow-library = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "ncurses";
        version = "0.2.16";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-ncurses/";
      url = "";
      synopsis = "Modernised bindings to GNU ncurses";
      description = "GNU ncurses is a library for creating command-line application with\npseudo-graphical interfaces. This package is a nice, modern binding\nto GNU ncurses.\n\nThe following example is a program that displays the message\n\\\"Hello world!\\\" until the user hits Q:\n\n@\nimport UI.NCurses\n\nmain :: IO ()\nmain = runCurses \$ do\n&#x20;   setEcho False\n&#x20;   w <- defaultWindow\n&#x20;   updateWindow w \$ do\n&#x20;       moveCursor 1 10\n&#x20;       drawString \\\"Hello world!\\\"\n&#x20;       moveCursor 3 10\n&#x20;       drawString \\\"(press q to quit)\\\"\n&#x20;       moveCursor 0 0\n&#x20;   render\n&#x20;   waitFor w (\\\\ev -> ev == EventCharacter \\'q\\' || ev == EventCharacter \\'Q\\')\n\nwaitFor :: Window -> (Event -> Bool) -> Curses ()\nwaitFor w p = loop where\n&#x20;   loop = do\n&#x20;       ev <- getEvent w Nothing\n&#x20;       case ev of\n&#x20;           Nothing -> loop\n&#x20;           Just ev' -> if p ev' then return () else loop\n@";
      buildType = "Simple";
    };
    components = {
      "ncurses" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
        libs = pkgs.lib.optionals (!_flags.use-pkgconfig) (if system.isOsx || _flags.force-narrow-library
          then [
            (pkgs.panel)
            (pkgs.ncurses)
            (pkgs.pthread)
          ]
          else [
            (pkgs.panelw)
            (pkgs.ncursesw)
            (pkgs.pthread)
          ]);
        pkgconfig = pkgs.lib.optionals (_flags.use-pkgconfig) (if _flags.force-narrow-library
          then [
            (pkgconfPkgs.ncurses)
            (pkgconfPkgs.panel)
          ]
          else [
            (pkgconfPkgs.ncursesw)
            (pkgconfPkgs.panelw)
          ]);
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
    };
  }