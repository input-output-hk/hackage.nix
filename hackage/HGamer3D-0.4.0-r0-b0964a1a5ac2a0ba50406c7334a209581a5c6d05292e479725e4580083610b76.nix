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
    flags = { audio = true; network = true; inputsystem = true; };
    package = {
      specVersion = "1.4";
      identifier = { name = "HGamer3D"; version = "0.4.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "althainz@gmail.com";
      author = "Peter Althainz";
      homepage = "http://www.hgamer3d.org";
      url = "";
      synopsis = "A Game Engine for the Haskell Programmer";
      description = "HGamer3D is a game engine for developing 3D games in the programming\nlanguage Haskell. The game engine uses available libraries for 3D graphics,\nsound, input device handling, gui programming and other areas and make\nthose functions available for the Haskell programmer by providing\na Haskell API on top of that. HGamer3D is available on Windows and Linux.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."HGamer3D-Data" or (errorHandler.buildDepError "HGamer3D-Data"))
          (hsPkgs."HGamer3D-Graphics3D" or (errorHandler.buildDepError "HGamer3D-Graphics3D"))
          (hsPkgs."HGamer3D-WinEvent" or (errorHandler.buildDepError "HGamer3D-WinEvent"))
          (hsPkgs."HGamer3D-GUI" or (errorHandler.buildDepError "HGamer3D-GUI"))
          ] ++ (pkgs.lib).optional (flags.audio) (hsPkgs."HGamer3D-Audio" or (errorHandler.buildDepError "HGamer3D-Audio"))) ++ (pkgs.lib).optional (flags.network) (hsPkgs."HGamer3D-Network" or (errorHandler.buildDepError "HGamer3D-Network"))) ++ (pkgs.lib).optional (flags.inputsystem) (hsPkgs."HGamer3D-InputSystem" or (errorHandler.buildDepError "HGamer3D-InputSystem"));
        buildable = true;
        };
      };
    }