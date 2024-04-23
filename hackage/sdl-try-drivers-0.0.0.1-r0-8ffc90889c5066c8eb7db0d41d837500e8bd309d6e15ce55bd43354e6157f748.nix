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
      identifier = { name = "sdl-try-drivers"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Eric Wolf <ericwolf42@gmail.com>";
      author = "Eric Wolf";
      homepage = "";
      url = "";
      synopsis = "small testing tool for sdl2 and accelerated drivers";
      description = "For each reported driver sdl-try-drivers tries to create a renderer\nand reports success or failure with the catched exception.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sdl-try-drivers" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sdl2" or (errorHandler.buildDepError "sdl2"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }