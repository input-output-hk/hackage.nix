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
      identifier = { name = "HGamer3D-Common"; version = "0.5.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "Toolset for the Haskell Game Programmer - Game Engine and Utilities";
      description = "HGamer3D is a toolset for developing 3D games in the programming\nlanguage Haskell. HGamer3D is available on Windows and Linux. This\npackage provides common engine definitions and utility functions for HGamer3D.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."FindBin" or (errorHandler.buildDepError "FindBin"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."vect" or (errorHandler.buildDepError "vect"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }