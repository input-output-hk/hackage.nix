let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."asn1-encoding" or (buildDepError "asn1-encoding"))
          (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."fingertree" or (buildDepError "fingertree"))
          (hsPkgs."hourglass" or (buildDepError "hourglass"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."monadLib" or (buildDepError "monadLib"))
          (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
          (hsPkgs."pure-zlib" or (buildDepError "pure-zlib"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."tls" or (buildDepError "tls"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."x509-store" or (buildDepError "x509-store"))
          ] ++ (pkgs.lib).optional (flags.network && !system.isHalvm) (hsPkgs."network" or (buildDepError "network"))) ++ (pkgs.lib).optional (flags.hans) (hsPkgs."hans" or (buildDepError "hans"));
        };
      exes = {
        "haskell-tor" = {
          depends = (([
            (hsPkgs."asn1-encoding" or (buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."haskell-tor" or (buildDepError "haskell-tor"))
            (hsPkgs."hourglass" or (buildDepError "hourglass"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."tls" or (buildDepError "tls"))
            (hsPkgs."x509" or (buildDepError "x509"))
            ] ++ (pkgs.lib).optional (flags.hans) (hsPkgs."hans" or (buildDepError "hans"))) ++ (pkgs.lib).optional (flags.network && !system.isHalvm) (hsPkgs."network" or (buildDepError "network"))) ++ (pkgs.lib).optionals (system.isHalvm) [
            (hsPkgs."HALVMCore" or (buildDepError "HALVMCore"))
            (hsPkgs."XenDevice" or (buildDepError "XenDevice"))
            ];
          };
        };
      tests = {
        "test-tor" = {
          depends = [
            (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."haskell-tor" or (buildDepError "haskell-tor"))
            (hsPkgs."hourglass" or (buildDepError "hourglass"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."pretty-hex" or (buildDepError "pretty-hex"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."x509" or (buildDepError "x509"))
            ];
          };
        };
      };
    }