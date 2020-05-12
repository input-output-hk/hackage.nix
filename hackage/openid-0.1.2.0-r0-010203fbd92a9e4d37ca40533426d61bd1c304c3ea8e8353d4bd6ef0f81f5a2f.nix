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
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "openid"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Trevor Elliott <trevor@geekgateway.com>";
      maintainer = "trevor@geekgateway.com";
      author = "Trevor Elliott";
      homepage = "http://github.com/elliottt/hsopenid";
      url = "";
      synopsis = "An implementation of the OpenID-2.0 spec.";
      description = "An implementation of the OpenID-2.0 spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."nano-hmac" or (errorHandler.buildDepError "nano-hmac"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          ] ++ (if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      };
    }