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
      specVersion = "1.2";
      identifier = { name = "graphicsFormats"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas Davie (tom.davie@gmail.com)";
      author = "Thomas Davie";
      homepage = "";
      url = "";
      synopsis = "Classes for renderable objects.";
      description = "Classes for renderable objects.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."OpenGL" or (errorHandler.buildDepError "OpenGL"))
          ];
        buildable = true;
        };
      };
    }