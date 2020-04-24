{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { gdk-318 = true; gtk-318 = true; gtk-320 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "ltk"; version = "0.16.2.0"; };
      license = "LicenseRef-GPL";
      copyright = "Juergen \"jutaro\" Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken";
      homepage = "http://www.leksah.org";
      url = "http://code.haskell.org/ltk";
      synopsis = "Leksah tool kit";
      description = "UI Framework used by leksah";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."haskell-gi-base" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or ((hsPkgs.pkgs-errors).buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or ((hsPkgs.pkgs-errors).buildDepError "gi-gobject"))
          (hsPkgs."gi-cairo" or ((hsPkgs.pkgs-errors).buildDepError "gi-cairo"))
          (hsPkgs."gi-gdk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gdk"))
          (hsPkgs."gi-gtk" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or ((hsPkgs.pkgs-errors).buildDepError "gi-gtk-hs"))
          (hsPkgs."haskell-gi-overloading" or ((hsPkgs.pkgs-errors).buildDepError "haskell-gi-overloading"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"));
        pkgconfig = ([
          (pkgconfPkgs."gdk-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-3.0"))
          ] ++ (if flags.gtk-318
          then [
            (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"))
            ]
          else [
            (pkgconfPkgs."gdk-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-3.0"))
            ])) ++ (if flags.gtk-320
          then [
            (pkgconfPkgs."gtk+-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gtk+-3.0"))
            ]
          else [
            (pkgconfPkgs."gdk-3.0" or ((hsPkgs.pkgs-errors).pkgConfDepError "gdk-3.0"))
            ]);
        buildable = true;
        };
      };
    }