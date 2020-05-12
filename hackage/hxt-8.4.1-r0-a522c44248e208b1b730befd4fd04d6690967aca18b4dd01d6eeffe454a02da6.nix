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
      identifier = { name = "hxt"; version = "8.4.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2005-2010 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "A collection of tools for processing XML with Haskell. ";
      description = "The Haskell XML Toolbox bases on the ideas of HaXml and HXML, but introduces a more general approach for processing XML with Haskell. The Haskell XML Toolbox uses a generic data model for representing XML documents, including the DTD subset and the document subset, in Haskell. It contains a validating XML parser, a HTML parser, namespace support, an XPath expression evaluator, an XSLT library, a RelaxNG schema validator and funtions for serialization and deserialization of user defined data. The libraray make extensive use of the arrow approach for processing XML.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          (hsPkgs."curl" or (errorHandler.buildDepError "curl"))
          ];
        buildable = true;
        };
      };
    }