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
      identifier = { name = "clippard"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "i@raynes.me";
      author = "Anthony Grimes";
      homepage = "https://github.com/Raynes/clippard";
      url = "";
      synopsis = "A simple Haskell library for copying text to the clipboard in a cross-platform way.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Clipboard" or (errorHandler.buildDepError "Clipboard"));
        buildable = true;
      };
    };
  }