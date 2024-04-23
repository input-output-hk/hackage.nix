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
    flags = { demos = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "purebred-email"; version = "0.6.0.1"; };
      license = "AGPL-3.0-or-later";
      copyright = "Copyright 2017-2021  Fraser Tweedale";
      maintainer = "frase@frase.id.au";
      author = "Fraser Tweedale";
      homepage = "https://github.com/purebred-mua/purebred-email";
      url = "";
      synopsis = "types and parser for email messages (including MIME)";
      description = "The purebred email library.  RFC 5322, MIME, etc.\nSee \"Data.MIME\" for usage, examples and API documentation.\n\nThis is a general-purpose library for processing and constructing\nemail messages, originally written to meet the needs of\n<https://github.com/purebred-mua/purebred purebred MUA>.\nTransmission and delivery of mail are not part of this library,\nbut /purebred-email/ could be a useful building block for such\nsystems.\n\nFeatures and implemented specifications include:\n\n- <https://tools.ietf.org/html/rfc5322 RFC 5322> message parsing and serialisation\n- MIME multipart messages (<https://tools.ietf.org/html/rfc2046 RFC 2046>)\n- Convenient APIs for replying and forward/bounce\n- Content transfer and charset decoding/encoding\n- MIME message header extensions for non-ASCII text (<https://tools.ietf.org/html/rfc2047 RFC 2047>)\n- MIME parameter value and encoded word extensions (<https://tools.ietf.org/html/rfc2231 RFC 2231>)\n- @Content-Disposition@ header field (<https://tools.ietf.org/html/rfc2183 RFC 2183>)\n- Address syntax in @From@ and @Sender@ fields (<https://tools.ietf.org/html/rfc6854 RFC 6854>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."concise" or (errorHandler.buildDepError "concise"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."stringsearch" or (errorHandler.buildDepError "stringsearch"))
        ];
        buildable = true;
      };
      exes = {
        "purebred-email-parse" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."purebred-email" or (errorHandler.buildDepError "purebred-email"))
          ];
          buildable = if !flags.demos then false else true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."purebred-email" or (errorHandler.buildDepError "purebred-email"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
          ];
          buildable = true;
        };
      };
    };
  }