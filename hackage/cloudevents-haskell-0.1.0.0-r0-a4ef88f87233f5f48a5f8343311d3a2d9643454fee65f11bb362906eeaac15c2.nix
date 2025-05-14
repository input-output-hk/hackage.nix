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
      specVersion = "2.2";
      identifier = { name = "cloudevents-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Freckle Education";
      author = "";
      homepage = "https://github.com/freckle/cloudevents-haskell#readme";
      url = "";
      synopsis = "Unofficial Haskell SDK for the CloudEvents specification";
      description = "See the README on GitHub at <https://github.com/freckle/cloudevents-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."autodocodec" or (errorHandler.buildDepError "autodocodec"))
          (hsPkgs."autodocodec-schema" or (errorHandler.buildDepError "autodocodec-schema"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hw-kafka-client" or (errorHandler.buildDepError "hw-kafka-client"))
          (hsPkgs."iri" or (errorHandler.buildDepError "iri"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }