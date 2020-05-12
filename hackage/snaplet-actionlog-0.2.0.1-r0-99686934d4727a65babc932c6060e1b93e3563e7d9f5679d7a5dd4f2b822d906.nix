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
      identifier = { name = "snaplet-actionlog"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ozataman@gmail.com, mightybyte@gmail.com";
      author = "Soostone Inc. Ozgun Ataman, Doug Beardsley";
      homepage = "https://github.com/soostone/snaplet-actionlog";
      url = "";
      synopsis = "Generic action log snaplet for the Snap Framework";
      description = "This snaplet contains support for logging website actions.\nCommon actions are creating, updating, and deleting records.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
          (hsPkgs."digestive-functors-heist" or (errorHandler.buildDepError "digestive-functors-heist"))
          (hsPkgs."digestive-functors-snap" or (errorHandler.buildDepError "digestive-functors-snap"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-postgresql" or (errorHandler.buildDepError "persistent-postgresql"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."readable" or (errorHandler.buildDepError "readable"))
          (hsPkgs."restful-snap" or (errorHandler.buildDepError "restful-snap"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-extras" or (errorHandler.buildDepError "snap-extras"))
          (hsPkgs."snaplet-persistent" or (errorHandler.buildDepError "snaplet-persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          ];
        buildable = true;
        };
      };
    }