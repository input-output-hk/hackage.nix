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
      identifier = { name = "cryptocipher"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez <vincent@snarc.org>";
      maintainer = "Vincent Hanquez <vincent@snarc.org>";
      author = "Vincent Hanquez <vincent@snarc.org>";
      homepage = "http://github.com/vincenthz/hs-crypto-cipher";
      url = "";
      synopsis = "Symmetrical block and stream ciphers.";
      description = "Symmetrical block and stream ciphers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."crypto-cipher-types" or (errorHandler.buildDepError "crypto-cipher-types"))
          (hsPkgs."cipher-aes" or (errorHandler.buildDepError "cipher-aes"))
          (hsPkgs."cipher-rc4" or (errorHandler.buildDepError "cipher-rc4"))
          (hsPkgs."cipher-des" or (errorHandler.buildDepError "cipher-des"))
          (hsPkgs."cipher-blowfish" or (errorHandler.buildDepError "cipher-blowfish"))
          (hsPkgs."cipher-camellia" or (errorHandler.buildDepError "cipher-camellia"))
        ];
        buildable = true;
      };
    };
  }