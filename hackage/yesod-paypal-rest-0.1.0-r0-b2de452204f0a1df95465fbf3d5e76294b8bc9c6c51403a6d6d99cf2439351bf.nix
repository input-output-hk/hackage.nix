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
      specVersion = "1.10";
      identifier = { name = "yesod-paypal-rest"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "vc@braden-walters.info";
      author = "Braden Walters";
      homepage = "";
      url = "";
      synopsis = "Yesod plugin to use PayPal with the paypal-rest-client library.";
      description = "Library to connect Yesod applications with PayPal's\n<https://developer.paypal.com/docs/api/ REST API v1> by using the\n<http://hackage.haskell.org/package/paypal-rest-client paypal-reset-client>\npackage. For documentation, see the\n<https://github.com/meoblast001/yesod-paypal-rest/blob/master/README.md README>.\nDue to the experimental nature of the paypal-rest-client, it is recommended to\nexplicitly give an exact version of that package even when you are already\nincluding this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."paypal-rest-client" or (errorHandler.buildDepError "paypal-rest-client"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }