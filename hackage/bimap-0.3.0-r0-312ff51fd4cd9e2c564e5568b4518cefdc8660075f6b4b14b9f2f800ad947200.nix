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
      identifier = { name = "bimap"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Stuart Cook and contributors 2008, Joel Williamson 2015";
      maintainer = "Joel Williamson <joel@joelwilliamson.ca>";
      author = "Stuart Cook and contributors 2008, Joel Williamson 2015";
      homepage = "https://github.com/joelwilliamson/bimap";
      url = "";
      synopsis = "Bidirectional mapping between two key types";
      description = "A data structure representing a bidirectional mapping between two\nkey types. Each value in the bimap is associated with exactly one\nvalue of the opposite type.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }