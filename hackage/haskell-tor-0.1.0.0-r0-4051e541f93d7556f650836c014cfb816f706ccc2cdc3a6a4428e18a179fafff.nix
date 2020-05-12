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
    flags = { network = true; hans = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tor"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "awick@galois.com";
      author = "Adam Wick";
      homepage = "http://github.com/GaloisInc/haskell-tor";
      url = "";
      synopsis = "A Haskell Tor Node";
      description = "An implementation of the Tor anonymity system in Haskell.\nThe core functionality is exported both as an application\nand as a high-level library exported by the 'Tor' module.\nPlease see that module for common usage scenarios, and\ndip only into the other files for advanced / unplanned\ncases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."fingertree" or (errorHandler.buildDepError "fingertree"))
          (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."monadLib" or (errorHandler.buildDepError "monadLib"))
          (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
          (hsPkgs."pure-zlib" or (errorHandler.buildDepError "pure-zlib"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
          (hsPkgs."x509-store" or (errorHandler.buildDepError "x509-store"))
          ] ++ (pkgs.lib).optional (flags.network) (hsPkgs."network" or (errorHandler.buildDepError "network"))) ++ (pkgs.lib).optional (flags.hans) (hsPkgs."hans" or (errorHandler.buildDepError "hans"));
        buildable = true;
        };
      exes = {
        "haskell-tor" = {
          depends = (([
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."haskell-tor" or (errorHandler.buildDepError "haskell-tor"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            ] ++ (pkgs.lib).optional (flags.hans) (hsPkgs."hans" or (errorHandler.buildDepError "hans"))) ++ (pkgs.lib).optional (flags.network) (hsPkgs."network" or (errorHandler.buildDepError "network"))) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."HALVMCore" or (errorHandler.buildDepError "HALVMCore"))
            (hsPkgs."XenDevice" or (errorHandler.buildDepError "XenDevice"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-tor" = {
          depends = [
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."haskell-tor" or (errorHandler.buildDepError "haskell-tor"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."pretty-hex" or (errorHandler.buildDepError "pretty-hex"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            ];
          buildable = true;
          };
        };
      };
    }