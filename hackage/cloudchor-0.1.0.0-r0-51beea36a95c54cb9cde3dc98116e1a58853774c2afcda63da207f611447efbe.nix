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
      specVersion = "3.8";
      identifier = { name = "cloudchor"; version = "0.1.0.0"; };
      license = "MPL-2.0";
      copyright = "Copyright (C) 2025 Alex Ionescu";
      maintainer = "Alex Ionescu <hackage@ionescu.sh>";
      author = "Alex Ionescu";
      homepage = "https://github.com/aionescu/cloudchor";
      url = "";
      synopsis = "Lightweight and efficient choreographic programming for cloud services";
      description = "Please see the README on GitHub at <https://github.com/aionescu/cloudchor#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
        ];
        buildable = true;
      };
      exes = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-clean-room" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-unsoundness" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-bank-2pc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-bookseller-0-network" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-bookseller-1-simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-bookseller-2-higher-order" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-bookseller-3-loc-poly" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-diffiehellman" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-karatsuba" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-kvs1" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-kvs2" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-kvs3" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-kvs4" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-mergesort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-quicksort" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-ring-leader" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
        "example-HasChor-playground" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cloudchor" or (errorHandler.buildDepError "cloudchor"))
          ];
          buildable = true;
        };
      };
    };
  }