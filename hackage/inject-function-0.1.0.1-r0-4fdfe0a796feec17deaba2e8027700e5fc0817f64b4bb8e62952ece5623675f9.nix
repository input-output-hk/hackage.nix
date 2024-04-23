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
      identifier = { name = "inject-function"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dimitri.sabadie@gmail.com";
      author = "DimitriSabadie";
      homepage = "https://github.com/skypers/inject-function";
      url = "";
      synopsis = "Monadic functions with injected parameters.";
      description = "An “inject function” is a regular monadic function (like a -> m b), but adds “injected parameters”. You can imagine such a function as an action taking parameters (the regular monadic function parameters) and vertical parameters. When you compose two compatible monadic functions (the regular way is through >=>), you can choose the types of the injected parameters so that, after some compositions, you have a total control of all the process.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }