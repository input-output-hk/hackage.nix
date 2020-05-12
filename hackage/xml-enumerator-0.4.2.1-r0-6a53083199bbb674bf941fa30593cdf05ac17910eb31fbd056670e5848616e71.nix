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
    flags = { test = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-enumerator"; version = "0.4.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michaels@suite-sol.com>";
      author = "Michael Snoyman <michaels@suite-sol.com>, Aristid Breitkreuz <aristidb@googlemail.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Pure-Haskell utilities for dealing with XML with the enumerator package.";
      description = "This package provides parsing and rendering functions for XML. It is based on the datatypes found in the xml-types package. This package is broken up into the following modules:\n\n* Text.XML: DOM-based parsing and rendering. This is the most commonly used module.\n\n* Text.XML.Cursor: A wrapper around \"Text.XML\" which allows bidirectional traversing of the DOM, similar to XPath. (Note: Text.XML.Cursor.Generic is the same concept, but will work with any node representation.)\n\n* Text.XML.Unresolved: A slight modification to \"Text.XML\" which does not require all entities to be resolved at parsing. The datatypes are slightly more complicated here, and therefore this module is only recommended when you need to deal directly with raw entities.\n\n* Text.XML.Stream.Parse: Streaming parser, including some streaming parser combinators.\n\n* Text.XML.Stream.Render: Streaming renderer.\n\nAdditionally, the xml-hamlet package <http://hackage.haskell.org/package/xml-hamlet> provides a more convenient syntax for creating XML documents.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          (hsPkgs."attoparsec-text-enumerator" or (errorHandler.buildDepError "attoparsec-text-enumerator"))
          (hsPkgs."attoparsec-text" or (errorHandler.buildDepError "attoparsec-text"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-builder-enumerator" or (errorHandler.buildDepError "blaze-builder-enumerator"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."failure" or (errorHandler.buildDepError "failure"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."enumerator" or (errorHandler.buildDepError "enumerator"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."xml-enumerator" or (errorHandler.buildDepError "xml-enumerator"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ];
          buildable = true;
          };
        };
      };
    }