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
      identifier = { name = "car-pool"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/car-pool/";
      url = "";
      synopsis = "Simple web-server for organizing car-pooling for an event";
      description = "Simple web-server for organizing car-pooling for an event";
      buildType = "Simple";
      };
    components = {
      exes = {
        "car-pool" = {
          depends = [
            (hsPkgs."spreadsheet" or (errorHandler.buildDepError "spreadsheet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."explicit-exception" or (errorHandler.buildDepError "explicit-exception"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."digestive-functors-blaze" or (errorHandler.buildDepError "digestive-functors-blaze"))
            (hsPkgs."digestive-functors-happstack" or (errorHandler.buildDepError "digestive-functors-happstack"))
            (hsPkgs."digestive-functors" or (errorHandler.buildDepError "digestive-functors"))
            (hsPkgs."happstack-server" or (errorHandler.buildDepError "happstack-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }