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
      identifier = { name = "HGamer3D-Audio"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Toolset for the Haskell Game Programmer - Audio Functionality";
      description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. This package provides the Audio functionality,\nbased on the package HGamer3D-SFML-Binding. HGamer3D-Audio\nis available on Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-SFML-Binding" or (errorHandler.buildDepError "HGamer3D-SFML-Binding"))
          (hsPkgs."HGamer3D-Common" or (errorHandler.buildDepError "HGamer3D-Common"))
          ];
        buildable = true;
        };
      };
    }