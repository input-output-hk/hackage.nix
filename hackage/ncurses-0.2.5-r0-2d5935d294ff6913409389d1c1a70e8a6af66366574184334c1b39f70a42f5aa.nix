{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ncurses"; version = "0.2.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>";
      homepage = "https://john-millikin.com/software/haskell-ncurses/";
      url = "";
      synopsis = "Modernised bindings to GNU ncurses";
      description = "GNU ncurses is a library for creating command-line application with\npseudo-graphical interfaces. This package is a nice, modern binding\nto GNU ncurses.\n\nThe following example is a program that display the message\n\\\"Hello world!\\\" until the user hits Q:\n\n@\nimport UI.NCurses\n\nmain :: IO ()\nmain = runCurses \$ do\n&#x20;   setEcho False\n&#x20;   w <- defaultWindow\n&#x20;   updateWindow w \$ do\n&#x20;       moveCursor 1 10\n&#x20;       drawString \\\"Hello world!\\\"\n&#x20;       moveCursor 3 10\n&#x20;       drawString \\\"(press q to quit)\\\"\n&#x20;       moveCursor 0 0\n&#x20;   render\n&#x20;   waitFor w (\\\\ev -> ev == EventCharacter \\'q\\' || ev == EventCharacter \\'Q\\')\n\nwaitFor :: Window -> (Event -> Bool) -> Curses ()\nwaitFor w p = loop where\n&#x20;   loop = do\n&#x20;       ev <- getEvent w Nothing\n&#x20;       case ev of\n&#x20;           Nothing -> loop\n&#x20;           Just ev' -> if p ev' then return () else loop\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        libs = if system.isOsx
          then [
            (pkgs."panel" or ((hsPkgs.pkgs-errors).sysDepError "panel"))
            (pkgs."ncurses" or ((hsPkgs.pkgs-errors).sysDepError "ncurses"))
            ]
          else [
            (pkgs."panelw" or ((hsPkgs.pkgs-errors).sysDepError "panelw"))
            (pkgs."ncursesw" or ((hsPkgs.pkgs-errors).sysDepError "ncursesw"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs or ((hsPkgs.pkgs-errors).buildToolDepError "c2hs")))
          ];
        buildable = true;
        };
      };
    }