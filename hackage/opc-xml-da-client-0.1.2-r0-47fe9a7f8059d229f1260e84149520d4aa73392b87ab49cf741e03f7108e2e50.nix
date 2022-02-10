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
      specVersion = "3.0";
      identifier = { name = "opc-xml-da-client"; version = "0.1.2"; };
      license = "MIT";
      copyright = "2021, Urban Mobility Labs Ltd.";
      maintainer = "Nikita Volkov, Yan Shkurinsky";
      author = "";
      homepage = "https://github.com/mlabs-haskell/opc-xml-da-client";
      url = "";
      synopsis = "OPC XML-DA Client";
      description = "An implementation of OPC XML-DA protocol for client applications. The specification for the protocol can be found [here](http://www.diit.unict.it/users/scava/dispense/II/OPCDataAccessXMLSpecification.pdf).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."acc" or (errorHandler.buildDepError "acc"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."domain" or (errorHandler.buildDepError "domain"))
          (hsPkgs."domain-optics" or (errorHandler.buildDepError "domain-optics"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashable-time" or (errorHandler.buildDepError "hashable-time"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-parser" or (errorHandler.buildDepError "xml-parser"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."acc" or (errorHandler.buildDepError "acc"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."domain" or (errorHandler.buildDepError "domain"))
            (hsPkgs."domain-optics" or (errorHandler.buildDepError "domain-optics"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashable-time" or (errorHandler.buildDepError "hashable-time"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-parser" or (errorHandler.buildDepError "xml-parser"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."caerbannog" or (errorHandler.buildDepError "caerbannog"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }