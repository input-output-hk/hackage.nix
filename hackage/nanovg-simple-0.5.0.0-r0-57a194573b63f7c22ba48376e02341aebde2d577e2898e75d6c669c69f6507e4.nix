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
    flags = { library-only = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "nanovg-simple"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Cthulhu (c) 2018";
      maintainer = "cthulhu.den@gmail.com";
      author = "Cthulhu";
      homepage = "https://github.com/CthulhuDen/nanovg-simple#readme";
      url = "";
      synopsis = "Simple interface to rendering with NanoVG";
      description = "Please see the README on GitHub at <https://github.com/CthulhuDen/nanovg-simple#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."GLFW-b" or (errorHandler.buildDepError "GLFW-b"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."nanovg" or (errorHandler.buildDepError "nanovg"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "nanovg-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."nanovg" or (errorHandler.buildDepError "nanovg"))
            (hsPkgs."nanovg-simple" or (errorHandler.buildDepError "nanovg-simple"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      };
    }