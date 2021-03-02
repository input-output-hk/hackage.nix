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
      identifier = { name = "snaplet-mandrill"; version = "0.1.0.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Parnell Springmeyer";
      maintainer = "parnell@digitalmentat.com";
      author = "Parnell Springmeyer";
      homepage = "https://github.com/ixmatus/snaplet-mandrill";
      url = "http://hackage.haskell.org/package/snaplet-mandrill";
      synopsis = "Snap framework snaplet for the Mandrill API library.";
      description = "<<https://travis-ci.org/ixmatus/snaplet-mandrill.svg?branch=master>>\n\n`snaplet-mandrill` is a snaplet for the Snap web framework providing\nconvenience functions and state management for the Haskell Mandrill\npackage.\n\nPlease refer to the README for an example - Cabal descriptions don't\nmake it easy to do so.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."mandrill" or (errorHandler.buildDepError "mandrill"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }