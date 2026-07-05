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
    flags = { pysrp = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "crypto-srp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adetokunbo@emio.la";
      author = "Tim Emiola";
      homepage = "";
      url = "";
      synopsis = "SRP authentication primitives";
      description = "A library providing primitives for the\n[Secure Remote Password (SRP)](https://datatracker.ietf.org/doc/html/rfc5054) protocol.\n\nIt includes the core SRP computation — public key exchange, premaster secret\nderivation, client\\/server proof generation and verification — along with the\nstandard prime groups from RFC 5054 Appendix A, a hash algorithm abstraction\ncovering SHA1, SHA256, SHA384 and SHA512, and cryptographically random\nprivate key generation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or (errorHandler.buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptohash-sha512" or (errorHandler.buildDepError "cryptohash-sha512"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unicode-transforms" or (errorHandler.buildDepError "unicode-transforms"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-srp" or (errorHandler.buildDepError "crypto-srp"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
        "pysrp-compat" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."crypto-srp" or (errorHandler.buildDepError "crypto-srp"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = if !flags.pysrp then false else true;
        };
      };
    };
  }