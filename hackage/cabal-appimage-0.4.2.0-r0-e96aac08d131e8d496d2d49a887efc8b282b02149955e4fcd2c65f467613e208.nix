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
      identifier = { name = "cabal-appimage"; version = "0.4.2.0"; };
      license = "AGPL-3.0-only";
      copyright = "2020-2025 Gabriele Sales";
      maintainer = "gbrsales@gmail.com";
      author = "Gabriele Sales";
      homepage = "https://github.com/gbrsales/cabal-appimage";
      url = "";
      synopsis = "Cabal support for creating AppImage applications";
      description = "This package provides a build hook automating the\ncreation of AppImage bundles.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
        ];
        buildable = true;
      };
    };
  }