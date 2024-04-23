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
      identifier = { name = "SDL2-ttf"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      author = "Ömer Sinan Ağacan (omeragacan@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL-ttf";
      description = "TODO";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."SDL2" or (errorHandler.buildDepError "SDL2"))
        ];
        libs = [
          (pkgs."SDL2" or (errorHandler.sysDepError "SDL2"))
          (pkgs."SDL2_ttf" or (errorHandler.sysDepError "SDL2_ttf"))
        ];
        buildable = true;
      };
    };
  }