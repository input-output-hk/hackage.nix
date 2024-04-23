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
      identifier = { name = "opc-xml-da-client"; version = "0.1.1"; };
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
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."domain" or (errorHandler.buildDepError "domain"))
          (hsPkgs."domain-optics" or (errorHandler.buildDepError "domain-optics"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-base or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-base"))
          (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-xml-builder or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-xml-builder"))
          (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-xml-schema-values or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-xml-schema-values"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-parser" or (errorHandler.buildDepError "xml-parser"))
        ];
        buildable = true;
      };
      sublibs = {
        "opc-xml-da-client-xml-builder" = {
          depends = [
            (hsPkgs."acc" or (errorHandler.buildDepError "acc"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-base or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-base"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
          buildable = true;
        };
        "opc-xml-da-client-xml-schema-values" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."attoparsec-data" or (errorHandler.buildDepError "attoparsec-data"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."domain" or (errorHandler.buildDepError "domain"))
            (hsPkgs."domain-optics" or (errorHandler.buildDepError "domain-optics"))
            (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-base or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-base"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
        "opc-xml-da-client-base" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hashable-time" or (errorHandler.buildDepError "hashable-time"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          ];
          buildable = true;
        };
        "opc-xml-da-client-quickcheck-util" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
          ];
          buildable = true;
        };
      };
      tests = {
        "library-test" = {
          depends = [
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."opc-xml-da-client" or (errorHandler.buildDepError "opc-xml-da-client"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
        "protocol-test" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."opc-xml-da-client" or (errorHandler.buildDepError "opc-xml-da-client"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-parser" or (errorHandler.buildDepError "xml-parser"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."caerbannog" or (errorHandler.buildDepError "caerbannog"))
          ];
          buildable = true;
        };
        "xml-schema-values-test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-quickcheck-util or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-quickcheck-util"))
            (hsPkgs."opc-xml-da-client".components.sublibs.opc-xml-da-client-xml-schema-values or (errorHandler.buildDepError "opc-xml-da-client:opc-xml-da-client-xml-schema-values"))
            (hsPkgs."rerebase" or (errorHandler.buildDepError "rerebase"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text-builder" or (errorHandler.buildDepError "text-builder"))
          ];
          buildable = true;
        };
      };
    };
  }