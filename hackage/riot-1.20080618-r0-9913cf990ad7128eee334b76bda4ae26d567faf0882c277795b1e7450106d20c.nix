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
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "riot"; version = "1.20080618"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tuomo Valkonen";
      author = "Tuomo Valkonen";
      homepage = "http://modeemi.fi/~tuomov/riot/";
      url = "";
      synopsis = "Riot is an Information Organisation Tool ";
      description = "Riot is a tool for keeping (textual) information organised. Some people\ncall such programs 'outliners'. It is a todo list and note manager, and\na manager for whatever information one might collect, that I wrote\nbecause I couldn't find a single one that was at all close to what I\nwanted. Riot has an interface resembling those of slrn and mutt and all\ntext editing is done with an external editor: Riot is simply a\nnice-to-use browser for collections of text.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "riot" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."packedstring" or (errorHandler.buildDepError "packedstring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          ];
          libs = [ (pkgs."ncursesw" or (errorHandler.sysDepError "ncursesw")) ];
          buildable = true;
        };
      };
    };
  }