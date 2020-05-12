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
      identifier = { name = "cal3d-opengl"; version = "0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "let at = \"@\" in concat [\"gdweber\", at, \"iue.edu\"]";
      author = "Gregory D. Weber";
      homepage = "http://haskell.org/haskellwiki/Cal3d_animation";
      url = "";
      synopsis = "OpenGL rendering for the Cal3D animation library";
      description = "Connects the Cal3D animation library to OpenGL.\nCal3D is a skeletal-based animation library written in C++.\nBy itself, it does not rendering, but provides hooks\nso that any graphics API can render the model.\nThis specializes the hooks for OpenGL.\nSee also cal3d, cal3d-examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cal3d" or (errorHandler.buildDepError "cal3d"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      };
    }