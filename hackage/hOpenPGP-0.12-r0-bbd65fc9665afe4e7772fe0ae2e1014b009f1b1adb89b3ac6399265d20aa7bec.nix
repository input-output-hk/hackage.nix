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
      identifier = { name = "hOpenPGP"; version = "0.12"; };
      license = "MIT";
      copyright = "2012-2014  Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hOpenPGP/";
      url = "";
      synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
      description = "native Haskell implementation of OpenPGP (RFC4880)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."cereal" or (buildDepError "cereal"))
          (hsPkgs."cereal-conduit" or (buildDepError "cereal-conduit"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."crypto-cipher-types" or (buildDepError "crypto-cipher-types"))
          (hsPkgs."crypto-pubkey" or (buildDepError "crypto-pubkey"))
          (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
          (hsPkgs."cryptocipher" or (buildDepError "cryptocipher"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."ixset" or (buildDepError "ixset"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."nettle" or (buildDepError "nettle"))
          (hsPkgs."openpgp-asciiarmor" or (buildDepError "openpgp-asciiarmor"))
          (hsPkgs."securemem" or (buildDepError "securemem"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hOpenPGP" or (buildDepError "hOpenPGP"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-conduit" or (buildDepError "cereal-conduit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."crypto-cipher-types" or (buildDepError "crypto-cipher-types"))
            (hsPkgs."crypto-pubkey" or (buildDepError "crypto-pubkey"))
            (hsPkgs."crypto-random" or (buildDepError "crypto-random"))
            (hsPkgs."cryptocipher" or (buildDepError "cryptocipher"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."ixset" or (buildDepError "ixset"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."nettle" or (buildDepError "nettle"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            ];
          };
        };
      };
    }