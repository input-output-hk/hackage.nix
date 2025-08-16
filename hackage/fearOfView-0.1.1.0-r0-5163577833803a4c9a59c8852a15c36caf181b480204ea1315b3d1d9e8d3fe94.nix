{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { bear = false; curses = true; debug = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "fearOfView"; version = "0.1.1.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "mbays@sdf.org";
      author = "mbays";
      homepage = "https://mbays.sdf.org/fov/";
      url = "";
      synopsis = "A terminal broughlike game about manipulating vision";
      description = "A constrained roguelike (\"broughlike\") game played on a 5x5 grid of cells\nwhich are regenerated when out of view. Can be compiled for play on a\ngenuine colour terminal using ncurses, or in a pseudo-terminal using\nbearlibterminal.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fearOfView" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."astar" or (errorHandler.buildDepError "astar"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          ] ++ pkgs.lib.optional (flags.curses) (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))) ++ pkgs.lib.optional (flags.bear) (hsPkgs."bearlibterminal" or (errorHandler.buildDepError "bearlibterminal"))) ++ pkgs.lib.optional (!flags.curses && !flags.bear) (hsPkgs."base" or (errorHandler.buildDepError "base"));
          libs = pkgs.lib.optional (flags.bear) (pkgs."BearLibTerminal" or (errorHandler.sysDepError "BearLibTerminal"));
          pkgconfig = pkgs.lib.optional (flags.curses) (pkgconfPkgs."ncursesw" or (errorHandler.pkgConfDepError "ncursesw"));
          buildable = if !flags.curses && !flags.bear then false else true;
        };
      };
    };
  }