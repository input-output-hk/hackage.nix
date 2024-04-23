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
      specVersion = "1.8";
      identifier = { name = "xmlhtml"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Smith <cdsmith@gmail.com>";
      author = "Chris Smith <cdsmith@gmail.com>";
      homepage = "https://github.com/snapframework/xmlhtml";
      url = "";
      synopsis = "XML parser and renderer with HTML 5 quirks mode";
      description = "Contains renderers and parsers for both XML and HTML 5\ndocument fragments, which share data structures so that\nit's easy to work with both.  Document fragments are bits\nof documents, which are not constrained by some of the\nhigh-level structure rules (in particular, they may\ncontain more than one root element).\n\nNote that this is not a compliant HTML 5 parser.  Rather,\nit is a parser for HTML 5 compliant documents.  It does not\nimplement the HTML 5 parsing algorithm, and should\ngenerally be expected to perform correctly only on\ndocuments that you trust to conform to HTML 5.  This is\nnot a suitable library for implementing web crawlers or\nother software that will be exposed to documents from\noutside sources.  The result is also not the HTML 5\nnode structure, but rather something closer to the physical\nstructure.  For example, omitted start tags are not\ninserted (and so, their corresponding end tags must also be\nomitted).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."bytestring-builder" or (errorHandler.buildDepError "bytestring-builder"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xmlhtml" or (errorHandler.buildDepError "xmlhtml"))
          ];
          buildable = true;
        };
      };
    };
  }