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
    flags = { optimize = false; profiling = false; tracing = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hnix"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "https://github.com/haskell-nix/hnix#readme";
      url = "";
      synopsis = "Haskell implementation of the Nix language";
      description = "Haskell implementation of the Nix language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-fix" or (buildDepError "data-fix"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."deriving-compat" or (buildDepError "deriving-compat"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hashing" or (buildDepError "hashing"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."lens-family" or (buildDepError "lens-family"))
          (hsPkgs."lens-family-core" or (buildDepError "lens-family-core"))
          (hsPkgs."lens-family-th" or (buildDepError "lens-family-th"))
          (hsPkgs."logict" or (buildDepError "logict"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."monadlist" or (buildDepError "monadlist"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-tdfa" or (buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or (buildDepError "regex-tdfa-text"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."these" or (buildDepError "these"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
          (hsPkgs."serialise" or (buildDepError "serialise"))
          ]) ++ (if compiler.isGhcjs && true
          then [ (hsPkgs."hashable" or (buildDepError "hashable")) ]
          else [
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ]);
        };
      exes = {
        "hnix" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashing" or (buildDepError "hashing"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."repline" or (buildDepError "repline"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            ];
          };
        };
      tests = {
        "hnix-tests" = {
          depends = [
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."generic-random" or (buildDepError "generic-random"))
            (hsPkgs."hashing" or (buildDepError "hashing"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."interpolate" or (buildDepError "interpolate"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            ];
          };
        };
      benchmarks = {
        "hnix-benchmarks" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or (buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hashing" or (buildDepError "hashing"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            ];
          };
        };
      };
    }