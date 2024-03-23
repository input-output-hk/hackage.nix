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
      identifier = { name = "musicScroll"; version = "0.3.4"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "ruben.astud@gmail.com";
      author = "Ruben Astudillo";
      homepage = "https://github.com/RubenAstudillo/MusicScroll";
      url = "";
      synopsis = "Supply your tunes info without leaving your music player.";
      description = "Automatically retrive the lyrics of of your current\nsong on SMPlayer/VLC and update it on each change. See the\nlyrics on a really elegant GTK app.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."xdg-basedir" or (errorHandler.buildDepError "xdg-basedir"))
          (hsPkgs."gi-gtk-hs" or (errorHandler.buildDepError "gi-gtk-hs"))
          (hsPkgs."pipes" or (errorHandler.buildDepError "pipes"))
          (hsPkgs."pipes-concurrency" or (errorHandler.buildDepError "pipes-concurrency"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."sqlite-simple" or (errorHandler.buildDepError "sqlite-simple"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        pkgconfig = [
          (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
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