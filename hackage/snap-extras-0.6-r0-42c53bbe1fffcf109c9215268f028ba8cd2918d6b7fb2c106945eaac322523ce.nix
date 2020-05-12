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
      identifier = { name = "snap-extras"; version = "0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oz@soostone.com";
      author = "Ozgun Ataman, Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "A collection of useful helpers and utilities for Snap web applications.";
      description = "This package contains a collection of helper functions\nthat come in handy in most practical, real-world\napplications. Check individual modules to understand\nwhat's here. You can simply import Snap.Extras and use\nthe initializer in there to get them all at once.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-heist" or (errorHandler.buildDepError "digestive-functors-heist"))
          (hsPkgs."digestive-functors-snap" or (errorHandler.buildDepError "digestive-functors-snap"))
          (hsPkgs."directory-tree" or (errorHandler.buildDepError "directory-tree"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      };
    }