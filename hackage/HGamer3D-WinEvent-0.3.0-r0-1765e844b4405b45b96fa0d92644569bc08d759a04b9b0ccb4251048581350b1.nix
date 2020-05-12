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
      specVersion = "1.4";
      identifier = { name = "HGamer3D-WinEvent"; version = "0.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Windowing and Event Functionality for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the Windowing and Event\nfunctionality, based on the package HGamer3D-SDL2-Binding.\nHGamer3D-WinEvent is available on Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-SDL2-Binding" or (errorHandler.buildDepError "HGamer3D-SDL2-Binding"))
          ];
        buildable = true;
        };
      };
    }