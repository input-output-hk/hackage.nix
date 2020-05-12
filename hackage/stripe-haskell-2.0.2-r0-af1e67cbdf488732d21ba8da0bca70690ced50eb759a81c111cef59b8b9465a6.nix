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
      identifier = { name = "stripe-haskell"; version = "2.0.2"; };
      license = "MIT";
      copyright = "Copyright (c) 2016 David M. Johnson, Jeremy Shaw";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson, Jeremy Shaw";
      homepage = "https://github.com/dmjio/stripe";
      url = "";
      synopsis = "Stripe API for Haskell";
      description = "For usage information please consult README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stripe-core" or (errorHandler.buildDepError "stripe-core"))
          (hsPkgs."stripe-http-streams" or (errorHandler.buildDepError "stripe-http-streams"))
          ];
        buildable = true;
        };
      };
    }