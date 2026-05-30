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
      specVersion = "3.8";
      identifier = { name = "idna2008"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2026 Viktor Dukhovni";
      maintainer = "ietf-dane@dukhovni.org";
      author = "Viktor Dukhovni";
      homepage = "https://github.com/dnsbase/idna2008";
      url = "";
      synopsis = "Strict IDNA2008 for Haskell";
      description = "A Haskell library for parsing and validating internationalized domain\nnames, which may contain characters from non-Latin scripts (Greek,\nHebrew, Arabic, CJK, ...) alongside the conventional letters, digits,\nand hyphens.\n.\nGiven a domain name as the user typed it, the library checks\nthat every label is well-formed, encodes any non-ASCII labels\ninto their ACE-prefixed form for the wire, tells the\ncaller what kind of label each one is, and (optionally)\nrenders the parsed name back to display form.\n.\nA single domain name often mixes several kinds of labels.\nThe library reports each label as one of: a conventional\nhostname-style letter-digit-hyphen label, a legacy reserved\nlabel, an internationalized label encoded as Punycode, an\n@\\\"xn--\\\"@-prefix that turns out not to decode cleanly, a\nUnicode label, an underscore-prefixed service-discovery\nlabel (e.g. @_25._tcp@, @_dmarc@), an arbitrary-bytes label,\nor the DNS wildcard.  Most existing IDNA libraries don't\nmake these distinctions; this library does.\n.\nStrict IDNA2008.  Some browsers and language standard\nlibraries use a more permissive variant of the IDNA standard\nthat accepts characters strict IDNA2008 rejects; this\nlibrary does not use that variant.\n.\nOriginally factored out of the @dnsbase@ library; conformance\ntest vectors are published as JSON for reuse by ports to\nother languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."idna2008".components.sublibs.punycode-internal or (errorHandler.buildDepError "idna2008:punycode-internal"))
        ];
        buildable = true;
      };
      sublibs = {
        "punycode-internal" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "punycode" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."idna2008" or (errorHandler.buildDepError "idna2008"))
            (hsPkgs."idna2008".components.sublibs.punycode-internal or (errorHandler.buildDepError "idna2008:punycode-internal"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
        "unicode-conformance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."idna2008" or (errorHandler.buildDepError "idna2008"))
            (hsPkgs."idna2008".components.sublibs.punycode-internal or (errorHandler.buildDepError "idna2008:punycode-internal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ];
          buildable = true;
        };
        "conformance" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."idna2008" or (errorHandler.buildDepError "idna2008"))
            (hsPkgs."idna2008".components.sublibs.punycode-internal or (errorHandler.buildDepError "idna2008:punycode-internal"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }