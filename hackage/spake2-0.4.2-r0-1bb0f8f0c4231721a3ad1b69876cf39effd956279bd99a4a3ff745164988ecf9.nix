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
      identifier = { name = "spake2"; version = "0.4.2"; };
      license = "LicenseRef-Apache";
      copyright = "";
      maintainer = "Jonathan M. Lange <jml@mumak.net>";
      author = "";
      homepage = "https://github.com/jml/haskell-spake2#readme";
      url = "";
      synopsis = "Implementation of the SPAKE2 Password-Authenticated Key Exchange algorithm";
      description = "This library implements the SPAKE2 password-authenticated key exchange\n(\"PAKE\") algorithm. This allows two parties, who share a weak password, to\nsafely derive a strong shared secret (and therefore build an\nencrypted+authenticated channel).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."protolude" or (buildDepError "protolude"))
          ];
        };
      exes = {
        "haskell-spake2-interop-entrypoint" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."spake2" or (buildDepError "spake2"))
            ];
          };
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."spake2" or (buildDepError "spake2"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hspec" or (buildDepError "tasty-hspec"))
            ];
          };
        };
      };
    }