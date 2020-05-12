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
      identifier = {
        name = "wai-middleware-hmac-client";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "https://github.com/creichert/wai-middleware-hmac";
      url = "";
      synopsis = "Wai HMAC Authentication Middleware Client";
      description = "\nReady to use client module for wai-middleware-hmac. This module is\nbuilt on http-client but is in the Wai namespace since the protocol\nis somewhat specific. Although this implementation does follow the\nRFC as closely as possible as well as Amazon AWS's implementation.\nHoweber, since nothing is formally specified these modules are\nspecifically built for each other Because of this, we also try to\nmaintain a slim dependency profile.  Because of the compatibility\nwith http-client you can still build into a streaming module if\nneeded";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."byteable" or (errorHandler.buildDepError "byteable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }