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
    flags = { network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hOpenPGP"; version = "2.4.3"; };
      license = "MIT";
      copyright = "2012-2016  Clint Adams";
      maintainer = "Clint Adams <clint@debian.org>";
      author = "Clint Adams";
      homepage = "http://floss.scru.org/hOpenPGP/";
      url = "";
      synopsis = "native Haskell implementation of OpenPGP (RFC4880)";
      description = "native Haskell implementation of OpenPGP (RFC4880), plus Camellia (RFC5581)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."byteable" or (buildDepError "byteable"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bzlib" or (buildDepError "bzlib"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."binary-conduit" or (buildDepError "binary-conduit"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."crypto-cipher-types" or (buildDepError "crypto-cipher-types"))
          (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."incremental-parser" or (buildDepError "incremental-parser"))
          (hsPkgs."ixset-typed" or (buildDepError "ixset-typed"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."memory" or (buildDepError "memory"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."nettle" or (buildDepError "nettle"))
          (hsPkgs."newtype" or (buildDepError "newtype"))
          (hsPkgs."openpgp-asciiarmor" or (buildDepError "openpgp-asciiarmor"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."securemem" or (buildDepError "securemem"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."wl-pprint-extras" or (buildDepError "wl-pprint-extras"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ] ++ [
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."network" or (buildDepError "network"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."hOpenPGP" or (buildDepError "hOpenPGP"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-conduit" or (buildDepError "binary-conduit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."crypto-cipher-types" or (buildDepError "crypto-cipher-types"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."incremental-parser" or (buildDepError "incremental-parser"))
            (hsPkgs."ixset-typed" or (buildDepError "ixset-typed"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."nettle" or (buildDepError "nettle"))
            (hsPkgs."newtype" or (buildDepError "newtype"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wl-pprint-extras" or (buildDepError "wl-pprint-extras"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            ] ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."hOpenPGP" or (buildDepError "hOpenPGP"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
            (hsPkgs."byteable" or (buildDepError "byteable"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."bzlib" or (buildDepError "bzlib"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."binary-conduit" or (buildDepError "binary-conduit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."conduit-extra" or (buildDepError "conduit-extra"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."crypto-cipher-types" or (buildDepError "crypto-cipher-types"))
            (hsPkgs."data-default-class" or (buildDepError "data-default-class"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."incremental-parser" or (buildDepError "incremental-parser"))
            (hsPkgs."ixset-typed" or (buildDepError "ixset-typed"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."nettle" or (buildDepError "nettle"))
            (hsPkgs."newtype" or (buildDepError "newtype"))
            (hsPkgs."openpgp-asciiarmor" or (buildDepError "openpgp-asciiarmor"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."securemem" or (buildDepError "securemem"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."time-locale-compat" or (buildDepError "time-locale-compat"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."wl-pprint-extras" or (buildDepError "wl-pprint-extras"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ] ++ [
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
          buildable = true;
          };
        };
      };
    }