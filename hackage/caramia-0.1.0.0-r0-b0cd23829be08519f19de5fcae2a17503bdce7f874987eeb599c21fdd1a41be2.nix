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
      specVersion = "1.10";
      identifier = { name = "caramia"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2014 Mikko Juola";
      maintainer = "mikjuo@gmail.com";
      author = "Mikko Juola";
      homepage = "https://github.com/Noeda/caramia/";
      url = "";
      synopsis = "Caramia real-time hardware-accelerated rendering library";
      description = "(See README.md in the repository for a more comprehensive description).\n\nThese are low-level, but Haskelly bindings to OpenGL 3.3.\n\nSee 'giveContext' in \"Caramia.Context\" as this is the\nstarting point for using this library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."OpenGLRaw" or (errorHandler.buildDepError "OpenGLRaw"))
        ];
        frameworks = pkgs.lib.optional (system.isOsx) (pkgs."OpenGL" or (errorHandler.sysDepError "OpenGL"));
        buildable = true;
      };
      tests = {
        "smoke-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
        "memory-info" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."caramia" or (errorHandler.buildDepError "caramia"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
          ];
          buildable = true;
        };
      };
    };
  }