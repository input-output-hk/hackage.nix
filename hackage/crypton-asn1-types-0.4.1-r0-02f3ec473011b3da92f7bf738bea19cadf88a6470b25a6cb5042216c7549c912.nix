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
      specVersion = "1.18";
      identifier = { name = "crypton-asn1-types"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Mike Pilgrem <public@pilgrem.com>,\nKazu Yamamoto <kazu@iij.ad.jp>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/mpilgrem/crypton-asn1";
      url = "";
      synopsis = "ASN.1 types";
      description = "A library providing types representing the Abstract Syntax Notation One\n(ASN.1) standard.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time-hourglass" or (errorHandler.buildDepError "time-hourglass"))
        ];
        buildable = true;
      };
    };
  }