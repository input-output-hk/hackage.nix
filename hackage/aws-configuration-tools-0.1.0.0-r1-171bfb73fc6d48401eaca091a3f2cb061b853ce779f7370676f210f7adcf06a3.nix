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
      identifier = { name = "aws-configuration-tools"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "Copyright 2013-2015 PivotCloud, Inc.";
      maintainer = "jon@jonmsterling.com";
      author = "Lars Kuhtz & Jon Sterling";
      homepage = "";
      url = "";
      synopsis = "Configuration types, parsers & renderers for AWS services";
      description = "Configuration types, parsers & renderers for AWS services, using configuration-tools.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."configuration-tools" or (errorHandler.buildDepError "configuration-tools"))
          (hsPkgs."aws" or (errorHandler.buildDepError "aws"))
          (hsPkgs."aws-kinesis" or (errorHandler.buildDepError "aws-kinesis"))
          (hsPkgs."aws-general" or (errorHandler.buildDepError "aws-general"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }