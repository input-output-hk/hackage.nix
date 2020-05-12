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
      identifier = { name = "snap-extras"; version = "0.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com";
      author = "Ozgun Ataman";
      homepage = "";
      url = "";
      synopsis = "A collection of useful helpers and utilities for Snap web applications.";
      description = "This package contains a collection of helper functions\nthat come in handy in most practical, real-world\napplications. Check individual modules to understand\nwhat's here. You can simply import Snap.Extras and use\nthe initializer in there to get them all at once.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."data-lens" or (errorHandler.buildDepError "data-lens"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-blaze" or (errorHandler.buildDepError "digestive-functors-blaze"))
          (hsPkgs."digestive-functors-snap" or (errorHandler.buildDepError "digestive-functors-snap"))
          ];
        buildable = true;
        };
      };
    }