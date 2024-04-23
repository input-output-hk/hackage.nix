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
      identifier = { name = "gemstone"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "cds@corbinsimpson.com";
      author = "Corbin Simpson";
      homepage = "http://corbinsimpson.com/";
      url = "";
      synopsis = "A simple library for SDL+GL games.";
      description = "Gemstone helps you build games.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."FTGL" or (errorHandler.buildDepError "FTGL"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."SDL" or (errorHandler.buildDepError "SDL"))
          (hsPkgs."SDL-image" or (errorHandler.buildDepError "SDL-image"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."bitmap" or (errorHandler.buildDepError "bitmap"))
          (hsPkgs."bitmap-opengl" or (errorHandler.buildDepError "bitmap-opengl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."linear" or (errorHandler.buildDepError "linear"))
          (hsPkgs."stb-image" or (errorHandler.buildDepError "stb-image"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }