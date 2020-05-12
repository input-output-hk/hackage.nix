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
      identifier = { name = "presto-hdbc"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "Copyright (c) 2015 Dropbox, Inc.";
      maintainer = "tomm@dropbox.com";
      author = "Tom McLaughlin";
      homepage = "";
      url = "";
      synopsis = "An HDBC connector for Presto";
      description = "Uses Presto's REST API to provide an HDBC interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HDBC" or (errorHandler.buildDepError "HDBC"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."either-unwrap" or (errorHandler.buildDepError "either-unwrap"))
          (hsPkgs."errors" or (errorHandler.buildDepError "errors"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."convertible" or (errorHandler.buildDepError "convertible"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."http-streams" or (errorHandler.buildDepError "http-streams"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          ];
        buildable = true;
        };
      };
    }