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
    flags = { optimize = false; profiling = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hnix"; version = "0.6.1"; };
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
        depends = ((([
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."comonad" or (buildDepError "comonad"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          (hsPkgs."data-fix" or (buildDepError "data-fix"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
          (hsPkgs."deriving-compat" or (buildDepError "deriving-compat"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."hashing" or (buildDepError "hashing"))
          (hsPkgs."hnix-store-core" or (buildDepError "hnix-store-core"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."interpolate" or (buildDepError "interpolate"))
          (hsPkgs."lens-family-th" or (buildDepError "lens-family-th"))
          (hsPkgs."logict" or (buildDepError "logict"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."monadlist" or (buildDepError "monadlist"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
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
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."unix" or (buildDepError "unix"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or (buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
          (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
          (hsPkgs."serialise" or (buildDepError "serialise"))
          ]) ++ [
          (hsPkgs."lens-family" or (buildDepError "lens-family"))
          (hsPkgs."lens-family-core" or (buildDepError "lens-family-core"))
          ]) ++ (if compiler.isGhcjs && true
          then [ (hsPkgs."hashable" or (buildDepError "hashable")) ]
          else [
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            ]);
        buildable = true;
        };
      exes = {
        "hnix" = {
          depends = ([
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."comonad" or (buildDepError "comonad"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."hashing" or (buildDepError "hashing"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."ref-tf" or (buildDepError "ref-tf"))
            (hsPkgs."repline" or (buildDepError "repline"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or (buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      tests = {
        "hnix-tests" = {
          depends = ([
            (hsPkgs."Diff" or (buildDepError "Diff"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-fix" or (buildDepError "data-fix"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."dependent-sum" or (buildDepError "dependent-sum"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."generic-random" or (buildDepError "generic-random"))
            (hsPkgs."hashing" or (buildDepError "hashing"))
            (hsPkgs."hedgehog" or (buildDepError "hedgehog"))
            (hsPkgs."hnix" or (buildDepError "hnix"))
            (hsPkgs."interpolate" or (buildDepError "interpolate"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or (buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."split" or (buildDepError "split"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or (buildDepError "tasty-th"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or (buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      benchmarks = {
        "hnix-benchmarks" = {
          depends = ([
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
            ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or (buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or (buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or (buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or (buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or (buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or (buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or (buildDepError "serialise"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }