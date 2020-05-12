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
      identifier = { name = "stripe-http-streams"; version = "2.2.0"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson, Jeremy Shaw";
      homepage = "";
      url = "";
      synopsis = "Stripe API for Haskell - http-streams backend";
      description = "\n<<https://stripe.com/img/navigation/logo@2x.png>>\n\n[Access Stripe API using http-streams]\nThis package provides access to the Stripe API using `stripe-core` and `http-streams`. See also the `stripe` package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."stripe-core" or (errorHandler.buildDepError "stripe-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
            (hsPkgs."stripe-core" or (errorHandler.buildDepError "stripe-core"))
            (hsPkgs."stripe-http-streams" or (errorHandler.buildDepError "stripe-http-streams"))
            (hsPkgs."stripe-tests" or (errorHandler.buildDepError "stripe-tests"))
            ];
          buildable = true;
          };
        };
      };
    }