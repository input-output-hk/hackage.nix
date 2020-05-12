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
    flags = { curses = false; vty = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "LambdaHack"; version = "0.1.20110918"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andres Loeh <mail@andres-loeh.de>";
      author = "Andres Loeh, Mikolaj Konarski";
      homepage = "http://github.com/kosmikus/LambdaHack";
      url = "";
      synopsis = "A roguelike game engine in early development";
      description = "This is an alpha release of LambdaHack, a roguelike game engine\npackaged together with a small example roguelike game\n(not yet well separated; this is future work,\ntogether with improving the AI monad EDSL,\nso that the rules for synthesising monster behaviour\nfrom game content are more readable and easier to debug).\n\nAnother game using this engine is Allure of the Stars\nat <http://hackage.haskell.org/package/Allure>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "LambdaHack" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."ConfigFile" or (errorHandler.buildDepError "ConfigFile"))
            (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ]) ++ (if flags.curses
            then [
              (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"))
              ]
            else if flags.vty
              then [ (hsPkgs."vty" or (errorHandler.buildDepError "vty")) ]
              else [ (hsPkgs."gtk" or (errorHandler.buildDepError "gtk")) ]);
          libs = (pkgs.lib).optional (flags.curses) (pkgs."curses" or (errorHandler.sysDepError "curses"));
          buildable = true;
          };
        };
      };
    }