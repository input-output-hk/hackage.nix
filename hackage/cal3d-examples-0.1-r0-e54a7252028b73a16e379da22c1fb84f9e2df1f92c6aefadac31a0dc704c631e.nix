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
      identifier = { name = "cal3d-examples"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "let at = \"@\" in concat [\"gdweber\", at, \"iue.edu\"]";
      author = "Gregory D. Weber";
      homepage = "http://haskell.org/haskellwiki/Cal3d_animation";
      url = "";
      synopsis = "Examples for the Cal3d animation library.";
      description = "Cal3d animation examples for cal3d.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cally-dump" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."cal3d" or (errorHandler.buildDepError "cal3d"))
            (hsPkgs."cal3d-opengl" or (errorHandler.buildDepError "cal3d-opengl"))
          ];
          buildable = true;
        };
        "cally-gl" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
            (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
            (hsPkgs."cal3d" or (errorHandler.buildDepError "cal3d"))
            (hsPkgs."cal3d-opengl" or (errorHandler.buildDepError "cal3d-opengl"))
          ];
          buildable = true;
        };
      };
    };
  }