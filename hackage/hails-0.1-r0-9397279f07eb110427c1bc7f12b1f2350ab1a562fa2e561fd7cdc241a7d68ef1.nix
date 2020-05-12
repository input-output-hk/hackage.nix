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
      specVersion = "1.6";
      identifier = { name = "hails"; version = "0.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "IFC enforcing web platform framework";
      description = "Hails is a framework for building multi-app web platforms.\nThis module exports a library for building Hails platforms.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lio" or (errorHandler.buildDepError "lio"))
          (hsPkgs."iterIO" or (errorHandler.buildDepError "iterIO"))
          (hsPkgs."iterio-server" or (errorHandler.buildDepError "iterio-server"))
          (hsPkgs."dclabel" or (errorHandler.buildDepError "dclabel"))
          (hsPkgs."mongoDB" or (errorHandler.buildDepError "mongoDB"))
          (hsPkgs."transformers-base" or (errorHandler.buildDepError "transformers-base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."bson" or (errorHandler.buildDepError "bson"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."compact-string-fix" or (errorHandler.buildDepError "compact-string-fix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."HsOpenSSL" or (errorHandler.buildDepError "HsOpenSSL"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."SHA" or (errorHandler.buildDepError "SHA"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."SimpleAES" or (errorHandler.buildDepError "SimpleAES"))
          (hsPkgs."RSA" or (errorHandler.buildDepError "RSA"))
          ];
        buildable = true;
        };
      };
    }