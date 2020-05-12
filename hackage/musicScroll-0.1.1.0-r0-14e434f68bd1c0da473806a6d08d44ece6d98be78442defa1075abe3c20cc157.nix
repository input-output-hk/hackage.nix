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
      specVersion = "1.10";
      identifier = { name = "musicScroll"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ruben.astud@gmail.com";
      author = "Ruben Astudillo";
      homepage = "https://github.com/RubenAstudillo/MusicScroll";
      url = "";
      synopsis = "Supply your tunes info without leaving your music player. ";
      description = "Automatically retrive the lyrics of of your current\nsong on SMPlayer and update it on each change. See the\nlyrics on a really elegant GTK app.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or (errorHandler.buildDepError "gi-gtk-hs"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      exes = {
        "music-scroll" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."musicScroll" or (errorHandler.buildDepError "musicScroll"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
            ];
          buildable = true;
          };
        };
      };
    }