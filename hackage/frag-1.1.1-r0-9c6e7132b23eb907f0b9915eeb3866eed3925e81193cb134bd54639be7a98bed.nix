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
      identifier = { name = "frag"; version = "1.1.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@galois.com";
      author = "Mun Hon Cheong";
      homepage = "http://haskell.org/haskellwiki/Frag";
      url = "";
      synopsis = "A 3-D First Person Shooter Game";
      description = "A fast and basic reimplementation of the Quake III Arena engine\nin Haskell; supports many Quake III Arena maps.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "frag" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."GLUT" or (errorHandler.buildDepError "GLUT"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }