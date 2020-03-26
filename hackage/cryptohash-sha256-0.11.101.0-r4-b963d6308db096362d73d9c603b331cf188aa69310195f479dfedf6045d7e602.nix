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
    flags = { exe = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "cryptohash-sha256"; version = "0.11.101.0"; };
      license = "BSD-3-Clause";
      copyright = "Vincent Hanquez, Herbert Valerio Riedel";
      maintainer = "Herbert Valerio Riedel <hvr@gnu.org>";
      author = "";
      homepage = "https://github.com/hvr/cryptohash-sha256";
      url = "";
      synopsis = "Fast, pure and practical SHA-256 implementation";
      description = "A practical incremental and one-pass, pure API to\nthe [SHA-256 cryptographic hash algorithm](https://en.wikipedia.org/wiki/SHA-2) according\nto [FIPS 180-4](http://dx.doi.org/10.6028/NIST.FIPS.180-4)\nwith performance close to the fastest implementations available in other languages.\n\nThe core SHA-256 algorithm is implemented in C and is thus expected\nto be as fast as the standard [sha256sum(1) tool](https://linux.die.net/man/1/sha256sum);\nfor instance, on an /Intel Core i7-3770/ at 3.40GHz this implementation can\ncompute a SHA-256 hash over 230 MiB of data in under one second.\n(If, instead, you require a pure Haskell implementation and performance is secondary, please refer to the [SHA package](https://hackage.haskell.org/package/SHA).)\n\nAdditionally, this package provides support for\n\n- HMAC-SHA-256: SHA-256-based [Hashed Message Authentication Codes](https://en.wikipedia.org/wiki/HMAC) (HMAC)\n- HKDF-SHA-256: [HMAC-SHA-256-based Key Derivation Function](https://en.wikipedia.org/wiki/HKDF) (HKDF)\n\nconforming to [RFC6234](https://tools.ietf.org/html/rfc6234), [RFC4231](https://tools.ietf.org/html/rfc4231), [RFC5869](https://tools.ietf.org/html/rfc5869), et al..\n\n=== Packages in the @cryptohash-*@ family\n\n- <https://hackage.haskell.org/package/cryptohash-md5    cryptohash-md5>\n- <https://hackage.haskell.org/package/cryptohash-sha1   cryptohash-sha1>\n- <https://hackage.haskell.org/package/cryptohash-sha256 cryptohash-sha256>\n- <https://hackage.haskell.org/package/cryptohash-sha512 cryptohash-sha512>\n\n=== Relationship to the @cryptohash@ package and its API\n\nThis package has been originally a fork of @cryptohash-0.11.7@ because the @cryptohash@\npackage had been deprecated and so this package continues to satisfy the need for a\nlightweight package providing the SHA-256 hash algorithm without any dependencies on packages\nother than @base@ and @bytestring@. The API exposed by @cryptohash-sha256-0.11.*@'s\n\"Crypto.Hash.SHA256\" module is guaranteed to remain a compatible superset of the API provided\nby the @cryptohash-0.11.7@'s module of the same name.\n\nConsequently, this package is designed to be used as a drop-in replacement for @cryptohash-0.11.7@'s\n\"Crypto.Hash.SHA256\" module, though with\na [clearly smaller footprint by almost 3 orders of magnitude](https://www.reddit.com/r/haskell/comments/5lxv75/psa_please_use_unique_module_names_when_uploading/dbzegx3/).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        buildable = true;
        };
      exes = {
        "sha256sum" = {
          depends = (pkgs.lib).optionals (flags.exe) [
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            ];
          buildable = if flags.exe then true else false;
          };
        };
      tests = {
        "test-sha256" = {
          depends = [
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench-sha256" = {
          depends = [
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }