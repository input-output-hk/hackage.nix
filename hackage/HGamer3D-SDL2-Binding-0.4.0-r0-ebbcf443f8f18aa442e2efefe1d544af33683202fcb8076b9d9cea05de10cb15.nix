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
      identifier = { name = "HGamer3D-SDL2-Binding"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "SDL2 Binding for HGamer3D";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. This package provides the SDL2 binding.\nHGamer3D-SDL2-Binding is available on Windows and Linux.\nThis binding does not claim to have full coverage of SDL2\nfunctionality, but only to support what is needed for the\nHGamer3D-WinEvent package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
        ];
        libs = if system.isWindows
          then [
            (pkgs."hg3dsdl2040" or (errorHandler.sysDepError "hg3dsdl2040"))
          ]
          else [
            (pkgs."hg3dsdl2040" or (errorHandler.sysDepError "hg3dsdl2040"))
            (pkgs."SDL2-2.0" or (errorHandler.sysDepError "SDL2-2.0"))
            (pkgs."X11" or (errorHandler.sysDepError "X11"))
          ];
        buildable = true;
      };
    };
  }