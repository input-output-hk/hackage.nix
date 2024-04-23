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
      specVersion = "2.4";
      identifier = { name = "HasChor"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Gan Shen 2022";
      maintainer = "Gan Shen <gan_shen@icloud.com>";
      author = "Gan Shen";
      homepage = "";
      url = "";
      synopsis = "Functional choreographic programming in Haskell";
      description = "HasChor is a library for functional choreographic programming in Haskell.\nSee the README.md for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
      exes = {
        "bank-2pc" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "bookseller-0-network" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "bookseller-1-simple" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "bookseller-2-higher-order" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "bookseller-3-loc-poly" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "diffiehellman" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "karatsuba" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
        "kvs1" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "kvs2" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "kvs3" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "kvs4" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "mergesort" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "quicksort" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "ring-leader" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
        "playground" = {
          depends = [
            (hsPkgs."HasChor" or (errorHandler.buildDepError "HasChor"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }