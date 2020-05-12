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
      identifier = { name = "HGamer3D"; version = "0.1.9"; };
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
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Ogre-Binding" or (errorHandler.buildDepError "HGamer3D-Ogre-Binding"))
          (hsPkgs."HGamer3D-SFML-Binding" or (errorHandler.buildDepError "HGamer3D-SFML-Binding"))
          (hsPkgs."HGamer3D-CEGUI-Binding" or (errorHandler.buildDepError "HGamer3D-CEGUI-Binding"))
          ];
        libs = [
          (pkgs."stdc++.dll" or (errorHandler.sysDepError "stdc++.dll"))
          ];
        buildable = true;
        };
      };
    }