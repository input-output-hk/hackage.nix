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
      specVersion = "1.12";
      identifier = { name = "snaplet-amqp"; version = "0.1.2.5"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/snaplet-amqp";
      url = "http://hackage.haskell.org/package/snaplet-amqp";
      synopsis = "Snap framework snaplet for the AMQP library";
      description = "`snaplet-amqp` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell AMQP\npackage.\n\nPlease refer to the README for an example - Cabal descriptions don't\nmake it easy to do so.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."amqp" or (errorHandler.buildDepError "amqp"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }