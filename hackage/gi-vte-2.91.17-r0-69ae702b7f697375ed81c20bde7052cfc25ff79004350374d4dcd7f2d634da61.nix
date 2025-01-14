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
      specVersion = "1.24";
      identifier = { name = "gi-vte"; version = "2.91.17"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria (garetxe@gmail.com)";
      author = "Will Thompson, Iñaki García Etxebarria and Jonas Platte";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "Vte bindings";
      description = "Bindings for Vte, autogenerated by haskell-gi.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.haskell-gi or (pkgs.pkgsBuildBuild.haskell-gi or (errorHandler.setupDepError "haskell-gi")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
          (hsPkgs."gi-pango" or (errorHandler.buildDepError "gi-pango"))
          (hsPkgs."gi-gtk" or (errorHandler.buildDepError "gi-gtk"))
          (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
          (hsPkgs."gi-gdk" or (errorHandler.buildDepError "gi-gdk"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-atk" or (errorHandler.buildDepError "gi-atk"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "8.2" && compiler.version.lt "8.3")) (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"));
        pkgconfig = [
          (pkgconfPkgs."vte-2.91" or (errorHandler.pkgConfDepError "vte-2.91"))
        ];
        buildable = true;
      };
    };
  }