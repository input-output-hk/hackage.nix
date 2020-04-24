{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-conduit"; version = "0.5.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michaels@suite-sol.com>";
      author = "Michael Snoyman <michaels@suite-sol.com>, Aristid Breitkreuz <aristidb@googlemail.com>";
      homepage = "http://github.com/snoyberg/xml";
      url = "";
      synopsis = "Pure-Haskell utilities for dealing with XML with the conduit package.";
      description = "This package provides parsing and rendering functions for XML. It is based on the datatypes found in the xml-types package. This package is broken up into the following modules:\n\n* Text.XML: DOM-based parsing and rendering. This is the most commonly used module.\n\n* Text.XML.Cursor: A wrapper around \"Text.XML\" which allows bidirectional traversing of the DOM, similar to XPath. (Note: Text.XML.Cursor.Generic is the same concept, but will work with any node representation.)\n\n* Text.XML.Unresolved: A slight modification to \"Text.XML\" which does not require all entities to be resolved at parsing. The datatypes are slightly more complicated here, and therefore this module is only recommended when you need to deal directly with raw entities.\n\n* Text.XML.Stream.Parse: Streaming parser, including some streaming parser combinators.\n\n* Text.XML.Stream.Render: Streaming renderer.\n\nAdditionally, the xml-hamlet package <http://hackage.haskell.org/package/xml-hamlet> provides a more convenient syntax for creating XML documents. For a more thorough tutorial on this library, please see <http://www.yesodweb.com/book/xml-enumerator>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
          (hsPkgs."blaze-builder-conduit" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder-conduit"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          ];
        buildable = true;
        };
      tests = {
        "runtests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."xml-conduit" or ((hsPkgs.pkgs-errors).buildDepError "xml-conduit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            ];
          buildable = true;
          };
        };
      };
    }