{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network = true; hans = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-tor"; version = "0.1.2"; };
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
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
          (hsPkgs."fingertree" or ((hsPkgs.pkgs-errors).buildDepError "fingertree"))
          (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
          (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."pretty-hex" or ((hsPkgs.pkgs-errors).buildDepError "pretty-hex"))
          (hsPkgs."pure-zlib" or ((hsPkgs.pkgs-errors).buildDepError "pure-zlib"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
          (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
          (hsPkgs."x509-store" or ((hsPkgs.pkgs-errors).buildDepError "x509-store"))
          ] ++ (pkgs.lib).optional (flags.network && !system.isHalvm) (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))) ++ (pkgs.lib).optional (flags.hans) (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"));
        buildable = true;
        };
      exes = {
        "haskell-tor" = {
          depends = (([
            (hsPkgs."asn1-encoding" or ((hsPkgs.pkgs-errors).buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."haskell-tor" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tor"))
            (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."tls" or ((hsPkgs.pkgs-errors).buildDepError "tls"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            ] ++ (pkgs.lib).optional (flags.hans) (hsPkgs."hans" or ((hsPkgs.pkgs-errors).buildDepError "hans"))) ++ (pkgs.lib).optional (flags.network && !system.isHalvm) (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."HALVMCore" or ((hsPkgs.pkgs-errors).buildDepError "HALVMCore"))
            (hsPkgs."XenDevice" or ((hsPkgs.pkgs-errors).buildDepError "XenDevice"))
            ];
          buildable = if !flags.hans && !flags.network || !flags.hans && system.isHalvm
            then false
            else true;
          };
        };
      tests = {
        "test-tor" = {
          depends = [
            (hsPkgs."asn1-types" or ((hsPkgs.pkgs-errors).buildDepError "asn1-types"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."haskell-tor" or ((hsPkgs.pkgs-errors).buildDepError "haskell-tor"))
            (hsPkgs."hourglass" or ((hsPkgs.pkgs-errors).buildDepError "hourglass"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."pretty-hex" or ((hsPkgs.pkgs-errors).buildDepError "pretty-hex"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."x509" or ((hsPkgs.pkgs-errors).buildDepError "x509"))
            ];
          buildable = true;
          };
        };
      };
    }