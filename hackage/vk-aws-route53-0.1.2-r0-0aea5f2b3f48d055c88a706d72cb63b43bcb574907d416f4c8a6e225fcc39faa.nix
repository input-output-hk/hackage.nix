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
      identifier = { name = "vk-aws-route53"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "MemCachier, Inc <code@memcachier.com>.";
      author = "Aristid Breitkreuz; AlephCloud Systems, Inc; MemCachier, Inc";
      homepage = "";
      url = "";
      synopsis = "Amazon Route53 DNS service plugin for the aws package.";
      description = "Amazon Route53 DNS service plugin for the aws package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-hamlet" or (errorHandler.buildDepError "xml-hamlet"))
        ];
        buildable = true;
      };
    };
  }