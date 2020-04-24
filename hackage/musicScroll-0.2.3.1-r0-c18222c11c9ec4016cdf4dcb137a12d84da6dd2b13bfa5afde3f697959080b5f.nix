{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "musicScroll"; version = "0.2.3.1"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."dbus" or ((hsPkgs.pkgs-errors).buildDepError "dbus"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."sqlite-simple" or ((hsPkgs.pkgs-errors).buildDepError "sqlite-simple"))
          (hsPkgs."xdg-basedir" or ((hsPkgs.pkgs-errors).buildDepError "xdg-basedir"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      exes = {
        "music-scroll" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."musicScroll" or ((hsPkgs.pkgs-errors).buildDepError "musicScroll"))
            ];
          pkgconfig = [
            (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"))
            ];
          buildable = true;
          };
        };
      };
    }