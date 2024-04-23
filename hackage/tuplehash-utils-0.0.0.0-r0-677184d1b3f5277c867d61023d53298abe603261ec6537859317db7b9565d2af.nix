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
      specVersion = "1.10";
      identifier = { name = "tuplehash-utils"; version = "0.0.0.0"; };
      license = "Apache-2.0";
      copyright = "Auth Global";
      maintainer = "Auth Global";
      author = "Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Left Encode and friends from SHA-3's TupleHash";
      description = "See NIST Special Publication 800-185: SHA-3 Derived Functions: cSHAKE, KMAC,\nTupleHash and ParallelHash.\n<https://www.nist.gov/publications/sha-3-derived-functions-cshake-kmac-tuplehash-and-parallelhash>\nNote that this does not implement TupleHash itself, though it could be used\nto implement TupleHash given an implementation of Keccak/SHA-3.  This only\nimplements the data-encoding portions of TupleHash, and does not directly\nimplement any kind of cryptographic state machine.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."integer-logarithms" or (errorHandler.buildDepError "integer-logarithms"))
        ];
        buildable = true;
      };
    };
  }