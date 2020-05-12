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
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-cairo" or (errorHandler.buildDepError "gi-cairo"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-gtk-hs" or (errorHandler.buildDepError "gi-gtk-hs"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhcjs && true)) (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"));
        pkgconfig = ([
          (pkgconfPkgs."gdk-3.0" or (errorHandler.pkgConfDepError "gdk-3.0"))
          ] ++ (if flags.gtk-318
          then [
            (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
            ]
          else [
            (pkgconfPkgs."gdk-3.0" or (errorHandler.pkgConfDepError "gdk-3.0"))
            ])) ++ (if flags.gtk-320
          then [
            (pkgconfPkgs."gtk+-3.0" or (errorHandler.pkgConfDepError "gtk+-3.0"))
            ]
          else [
            (pkgconfPkgs."gdk-3.0" or (errorHandler.pkgConfDepError "gdk-3.0"))
            ]);
        buildable = true;
        };
      };
    }