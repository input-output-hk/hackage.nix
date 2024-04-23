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
      identifier = { name = "HGamer3D"; version = "0.2.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Windows Game Engine for the Haskell Programmer";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. The game engine uses available libraries for 3D graphics,\nsound, input device handling, gui programming and other areas and make\nthose functions available for the Haskell programmer by providing\na Haskell API on top of that. HGamer3D is available on Windows only.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."netwire" or (errorHandler.buildDepError "netwire"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Ogre-Binding" or (errorHandler.buildDepError "HGamer3D-Ogre-Binding"))
          (hsPkgs."HGamer3D-SFML-Binding" or (errorHandler.buildDepError "HGamer3D-SFML-Binding"))
          (hsPkgs."HGamer3D-CEGUI-Binding" or (errorHandler.buildDepError "HGamer3D-CEGUI-Binding"))
          (hsPkgs."HGamer3D-Bullet-Binding" or (errorHandler.buildDepError "HGamer3D-Bullet-Binding"))
          (hsPkgs."HGamer3D-Enet-Binding" or (errorHandler.buildDepError "HGamer3D-Enet-Binding"))
        ];
        buildable = true;
      };
    };
  }