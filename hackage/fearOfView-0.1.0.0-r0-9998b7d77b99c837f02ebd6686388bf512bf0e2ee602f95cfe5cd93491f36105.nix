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
    flags = { debug = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "fearOfView"; version = "0.1.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "mbays@sdf.org";
      author = "mbays";
      homepage = "https://mbays.sdf.org/fov/";
      url = "";
      synopsis = "A terminal broughlike game about manipulating vision ";
      description = "A constrained roguelike (\"broughlike\") game played on a 5x5 grid of cells\nwhich are regenerated when out of view. Designed for colour terminals,\nusing the ncurses library.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "fearOfView" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
            (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
            (hsPkgs."splitmix" or (errorHandler.buildDepError "splitmix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."serialise" or (errorHandler.buildDepError "serialise"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."astar" or (errorHandler.buildDepError "astar"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
          ];
          pkgconfig = [
            (pkgconfPkgs."ncursesw" or (errorHandler.pkgConfDepError "ncursesw"))
          ];
          buildable = true;
        };
      };
    };
  }