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
      identifier = { name = "crypton-pubkey-types"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Pranay Sashank <pranaysashank@gmail.com>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/kronor-io/crypton-pubkey-types";
      url = "";
      synopsis = "Public keys algorithm types";
      description = "Generic cryptography public keys algorithm types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."crypton-asn1-types" or (errorHandler.buildDepError "crypton-asn1-types"))
          (hsPkgs."crypton-asn1-encoding" or (errorHandler.buildDepError "crypton-asn1-encoding"))
        ];
        buildable = true;
      };
    };
  }