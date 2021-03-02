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
      specVersion = "1.0";
      identifier = { name = "rad"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Edward Kmett 2010";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett 2010";
      homepage = "http://comonad.com/reader/";
      url = "";
      synopsis = "Reverse Automatic Differentiation.";
      description = "Reverse-Mode Automatic Differentiation via overloading.\nExistential type \\\"branding\\\" is used to prevent sensitivity confusion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-reify" or (errorHandler.buildDepError "data-reify"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        buildable = true;
        };
      };
    }