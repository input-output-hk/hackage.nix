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
      specVersion = "2.0";
      identifier = { name = "gi-ges"; version = "1.0.1"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "Iñaki García Etxebarria";
      author = "Iñaki García Etxebarria";
      homepage = "https://github.com/haskell-gi/haskell-gi";
      url = "";
      synopsis = "libges bindings";
      description = "Bindings for GStreamer Editing Services, autogenerated by haskell-gi.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.haskell-gi or (pkgs.pkgsBuildBuild.haskell-gi or (errorHandler.setupDepError "haskell-gi")))
        (hsPkgs.pkgsBuildBuild.gi-glib or (pkgs.pkgsBuildBuild.gi-glib or (errorHandler.setupDepError "gi-glib")))
        (hsPkgs.pkgsBuildBuild.gi-gobject or (pkgs.pkgsBuildBuild.gi-gobject or (errorHandler.setupDepError "gi-gobject")))
        (hsPkgs.pkgsBuildBuild.gi-gio or (pkgs.pkgsBuildBuild.gi-gio or (errorHandler.setupDepError "gi-gio")))
        (hsPkgs.pkgsBuildBuild.gi-gst or (pkgs.pkgsBuildBuild.gi-gst or (errorHandler.setupDepError "gi-gst")))
        (hsPkgs.pkgsBuildBuild.gi-gstpbutils or (pkgs.pkgsBuildBuild.gi-gstpbutils or (errorHandler.setupDepError "gi-gstpbutils")))
        (hsPkgs.pkgsBuildBuild.gi-gstvideo or (pkgs.pkgsBuildBuild.gi-gstvideo or (errorHandler.setupDepError "gi-gstvideo")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-gi-base" or (errorHandler.buildDepError "haskell-gi-base"))
          (hsPkgs."haskell-gi" or (errorHandler.buildDepError "haskell-gi"))
          (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"))
          (hsPkgs."gi-glib" or (errorHandler.buildDepError "gi-glib"))
          (hsPkgs."gi-gobject" or (errorHandler.buildDepError "gi-gobject"))
          (hsPkgs."gi-gio" or (errorHandler.buildDepError "gi-gio"))
          (hsPkgs."gi-gst" or (errorHandler.buildDepError "gi-gst"))
          (hsPkgs."gi-gstpbutils" or (errorHandler.buildDepError "gi-gstpbutils"))
          (hsPkgs."gi-gstvideo" or (errorHandler.buildDepError "gi-gstvideo"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "8.2" && compiler.version.lt "8.3")) (hsPkgs."haskell-gi-overloading" or (errorHandler.buildDepError "haskell-gi-overloading"));
        pkgconfig = [
          (pkgconfPkgs."gst-editing-services-1.0" or (errorHandler.pkgConfDepError "gst-editing-services-1.0"))
        ];
        buildable = true;
      };
    };
  }