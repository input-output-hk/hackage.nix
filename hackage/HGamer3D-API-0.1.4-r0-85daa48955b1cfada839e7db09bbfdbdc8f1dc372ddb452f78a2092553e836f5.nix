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
      specVersion = "1.2";
      identifier = { name = "HGamer3D-API"; version = "0.1.4"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@googlemail.com";
      author = "Dr. Peter Althainz";
      homepage = "http://www.althainz.de/HGamer3D.html";
      url = "";
      synopsis = "Library to enable 3D game development for Haskell - API";
      description = "Library, to enable 3D game development for Haskell,\nbased on bindings to 3D Graphics, pyhsics engine and additional libraries.\nCurrent implementation contains the following features:\nOGRE Binding, OIS Binding (limited functionality)\nPlatform: Windows only\nInstall following packages in sequence: HGamer3D-Data, HGamer3D-Ogre-Binding, HGamer3D-OIS-Binding, HGamer3D-API\nLicense: Apache License, Version 2.0\nThis part contains different types of API's\nOne - first trial API, to test overall API design";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Ogre-Binding" or (errorHandler.buildDepError "HGamer3D-Ogre-Binding"))
          (hsPkgs."HGamer3D-OIS-Binding" or (errorHandler.buildDepError "HGamer3D-OIS-Binding"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
        ];
        libs = [
          (pkgs."stdc++.dll" or (errorHandler.sysDepError "stdc++.dll"))
        ];
        buildable = true;
      };
    };
  }