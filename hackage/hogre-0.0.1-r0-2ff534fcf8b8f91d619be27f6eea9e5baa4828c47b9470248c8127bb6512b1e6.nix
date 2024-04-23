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
      specVersion = "1.6";
      identifier = { name = "hogre"; version = "0.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Antti Salonen 2009";
      maintainer = "Antti Salonen<ajsalonen at gmail dot com>";
      author = "Antti Salonen<ajsalonen at gmail dot com>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to a subset of OGRE";
      description = "This package contains bindings to a subset of OGRE\n(Object-Oriented Graphics Rendering Engine)\n(<http://www.ogre3d.org/>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        libs = [
          (pkgs."CEGUIOgreRenderer" or (errorHandler.sysDepError "CEGUIOgreRenderer"))
          (pkgs."OgreMain" or (errorHandler.sysDepError "OgreMain"))
          (pkgs."CEGUIBase" or (errorHandler.sysDepError "CEGUIBase"))
        ];
        pkgconfig = [
          (pkgconfPkgs."OGRE" or (errorHandler.pkgConfDepError "OGRE"))
          (pkgconfPkgs."CEGUI" or (errorHandler.pkgConfDepError "CEGUI"))
          (pkgconfPkgs."CEGUI-OGRE" or (errorHandler.pkgConfDepError "CEGUI-OGRE"))
        ];
        buildable = true;
      };
    };
  }