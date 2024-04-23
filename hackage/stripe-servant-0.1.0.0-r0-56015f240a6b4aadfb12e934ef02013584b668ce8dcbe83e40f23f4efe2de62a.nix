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
      specVersion = "1.12";
      identifier = { name = "stripe-servant"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Alexander Thiemann <mail@thiemann.at>";
      maintainer = "Alexander Thiemann <mail@thiemann.at>";
      author = "Alexander Thiemann <mail@thiemann.at>";
      homepage = "https://github.com/agrafix/stripe-hs#readme";
      url = "";
      synopsis = "Unofficial Stripe servant types";
      description = "Unofficial description of the Stripe API using servant types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."casing" or (errorHandler.buildDepError "casing"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
    };
  }