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
      identifier = { name = "stripe-signature"; version = "1.0.0.17"; };
      license = "MIT";
      copyright = "2019-2021 Mission Valley Software LLC";
      maintainer = "Chris Martin, Julie Moronuki";
      author = "Chris Martin";
      homepage = "https://github.com/typeclasses/stripe";
      url = "";
      synopsis = "Verification of Stripe webhook signatures";
      description = "When Stripe sends an event to your webhook, it includes\nan HTTP header named “Stripe-Signature”. You should use this to\nverify the authenticity of the request to ensure that you are not\nacting upon forged events originating from some source other than\nStripe.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."stripe-concepts" or (errorHandler.buildDepError "stripe-concepts"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test-stripe-signature" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16-bytestring" or (errorHandler.buildDepError "base16-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
            (hsPkgs."stripe-concepts" or (errorHandler.buildDepError "stripe-concepts"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."stripe-signature" or (errorHandler.buildDepError "stripe-signature"))
          ];
          buildable = true;
        };
      };
    };
  }