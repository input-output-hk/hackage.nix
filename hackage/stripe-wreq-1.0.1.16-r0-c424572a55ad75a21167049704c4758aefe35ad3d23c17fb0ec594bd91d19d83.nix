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
      specVersion = "3.0";
      identifier = { name = "stripe-wreq"; version = "1.0.1.16"; };
      license = "MIT";
      copyright = "2019-2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/stripe";
      url = "";
      synopsis = "Use the Stripe API via Wreq";
      description = "This package helps you make requests to the Stripe API\nin conjunction with the wreq package. This is a minimal library\nthat makes no attempt obscure either its underpinnings in Wreq\nor any of the details of the Stripe API. Responses are returned\nas aeson values.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."stripe-concepts" or (errorHandler.buildDepError "stripe-concepts"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."wreq" or (errorHandler.buildDepError "wreq"))
        ];
        buildable = true;
      };
    };
  }