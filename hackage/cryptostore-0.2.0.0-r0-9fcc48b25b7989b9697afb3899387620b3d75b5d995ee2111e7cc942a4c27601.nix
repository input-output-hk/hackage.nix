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
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cryptostore"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Olivier Chéron";
      maintainer = "olivier.cheron@gmail.com";
      author = "Olivier Chéron";
      homepage = "https://github.com/ocheron/cryptostore";
      url = "";
      synopsis = "Serialization of cryptographic data types";
      description = "Haskell implementation of PKCS \\#8, PKCS \\#12 and CMS\n(Cryptographic Message Syntax).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."basement" or (buildDepError "basement"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."pem" or (buildDepError "pem"))
          (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
          (hsPkgs."asn1-encoding" or (buildDepError "asn1-encoding"))
          (hsPkgs."hourglass" or (buildDepError "hourglass"))
          (hsPkgs."x509" or (buildDepError "x509"))
          (hsPkgs."x509-validation" or (buildDepError "x509-validation"))
          ];
        };
      tests = {
        "test-cryptostore" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."asn1-types" or (buildDepError "asn1-types"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."hourglass" or (buildDepError "hourglass"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."x509" or (buildDepError "x509"))
            (hsPkgs."cryptostore" or (buildDepError "cryptostore"))
            ];
          };
        };
      };
    }