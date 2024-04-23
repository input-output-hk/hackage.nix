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
      specVersion = "1.8";
      identifier = { name = "mpvguihs"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "(C) 2013 Sebastián E. Peyrott";
      maintainer = "pseus7+mpvguihs@gmail.com";
      author = "Sebastián E. Peyrott";
      homepage = "https://github.com/sebadoom/mpvguihs";
      url = "";
      synopsis = "A minimalist mpv GUI written in I/O heavy Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mpvguihs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
          buildable = true;
        };
      };
    };
  }