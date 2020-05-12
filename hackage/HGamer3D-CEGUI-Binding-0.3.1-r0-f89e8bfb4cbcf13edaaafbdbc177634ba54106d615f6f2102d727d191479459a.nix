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
      identifier = { name = "HGamer3D-CEGUI-Binding"; version = "0.3.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "A Game Engine for the Haskell Programmer - CEGUI  Bindings";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This module provides the CEGUI Bindings.\nHGamer3D-CEGUI-Binding is available on Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          ];
        libs = if system.isWindows
          then [
            (pkgs."hg3dcegui031" or (errorHandler.sysDepError "hg3dcegui031"))
            ]
          else [
            (pkgs."hg3dcegui031" or (errorHandler.sysDepError "hg3dcegui031"))
            (pkgs."CEGUIBase-0.7.7" or (errorHandler.sysDepError "CEGUIBase-0.7.7"))
            (pkgs."CEGUIOgreRenderer-0.7.7" or (errorHandler.sysDepError "CEGUIOgreRenderer-0.7.7"))
            ];
        buildable = true;
        };
      };
    }