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
      identifier = { name = "HGamer3D-Ogre-Binding"; version = "0.3.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Ogre Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the Ogre binding.\nHGamer3D-Ogre-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of Ogre\nfunctionality, but only to support what is needed for the\nHGamer3D-Graphics3D package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."hg3dogre030" or (errorHandler.sysDepError "hg3dogre030"))
            ]
          else [
            (pkgs."hg3dogre030" or (errorHandler.sysDepError "hg3dogre030"))
            (pkgs."OgreMain" or (errorHandler.sysDepError "OgreMain"))
            (pkgs."OgrePaging" or (errorHandler.sysDepError "OgrePaging"))
            (pkgs."OgreProperty" or (errorHandler.sysDepError "OgreProperty"))
            (pkgs."OgreRTShaderSystem" or (errorHandler.sysDepError "OgreRTShaderSystem"))
            (pkgs."OgreTerrain" or (errorHandler.sysDepError "OgreTerrain"))
            ];
        buildable = true;
        };
      };
    }