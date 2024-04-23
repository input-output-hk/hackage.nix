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
      identifier = { name = "snaplet-stripe"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Luke Hoersten <luke@hoersten.org>";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/snaplet-stripe";
      url = "";
      synopsis = "Stripe snaplet for the Snap Framework";
      description = "This snaplet contains support for using the Stripe\npayment platform with a Snap Framework application.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."heist" or (errorHandler.buildDepError "heist"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-format" or (errorHandler.buildDepError "text-format"))
          (hsPkgs."configurator" or (errorHandler.buildDepError "configurator"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          (hsPkgs."stripe" or (errorHandler.buildDepError "stripe"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
        ];
        buildable = true;
      };
    };
  }