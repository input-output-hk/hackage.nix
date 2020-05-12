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
      identifier = { name = "sws"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014 Derek Elkins";
      maintainer = "derek.a.elkins@gmail.com";
      author = "Derek Elkins";
      homepage = "";
      url = "";
      synopsis = "A simple web server for serving directories, similar to weborf.";
      description = "The main drivers for this application were Windows (and Linux) support and\nsecurity, and to a lesser extent performance.  Security is improved over\nweborf by using Haskell, supporting TLS, and explicitly NOT supporting CGIs\nof any kind.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sws" = {
          depends = [
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-pubkey" or (errorHandler.buildDepError "crypto-pubkey"))
            (hsPkgs."crypto-random" or (errorHandler.buildDepError "crypto-random"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            ];
          buildable = true;
          };
        };
      };
    }