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
      identifier = { name = "HGamer3D-SFML-Binding"; version = "0.3.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "SFML Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the SFML binding.\nHGamer3D-SFML-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of SFML\nfunctionality, but only to support what is needed for the\nHGamer3D-Audio and HGamer3D-InputSystem packages.";
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
            (pkgs."hg3dsfml031" or (errorHandler.sysDepError "hg3dsfml031"))
            ]
          else [
            (pkgs."hg3dsfml031" or (errorHandler.sysDepError "hg3dsfml031"))
            (pkgs."sfml-audio" or (errorHandler.sysDepError "sfml-audio"))
            (pkgs."sfml-system" or (errorHandler.sysDepError "sfml-system"))
            (pkgs."sfml-window" or (errorHandler.sysDepError "sfml-window"))
            (pkgs."sfml-network" or (errorHandler.sysDepError "sfml-network"))
            ];
        buildable = true;
        };
      };
    }