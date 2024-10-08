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
      identifier = { name = "HGamer3D-Graphics3D"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Toolset for the Haskell Game Programmer - 3D Graphics Functionality";
      description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. This package provides the 3D Graphics functionality\nbased on the package HGamer3D-Ogre-Binding. HGamer3D-Graphics3D is\navailable on Windows and Linux.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Common" or (errorHandler.buildDepError "HGamer3D-Common"))
          (hsPkgs."HGamer3D-Ogre-Binding" or (errorHandler.buildDepError "HGamer3D-Ogre-Binding"))
          (hsPkgs."HGamer3D-SDL2-Binding" or (errorHandler.buildDepError "HGamer3D-SDL2-Binding"))
          (hsPkgs."HGamer3D-CEGUI-Binding" or (errorHandler.buildDepError "HGamer3D-CEGUI-Binding"))
        ];
        buildable = true;
      };
    };
  }