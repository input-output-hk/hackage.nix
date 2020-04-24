{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { optimize = false; profiling = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hnix"; version = "0.6.0"; };
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
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
          (hsPkgs."deriving-compat" or ((hsPkgs.pkgs-errors).buildDepError "deriving-compat"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."free" or ((hsPkgs.pkgs-errors).buildDepError "free"))
          (hsPkgs."hashing" or ((hsPkgs.pkgs-errors).buildDepError "hashing"))
          (hsPkgs."hnix-store-core" or ((hsPkgs.pkgs-errors).buildDepError "hnix-store-core"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."interpolate" or ((hsPkgs.pkgs-errors).buildDepError "interpolate"))
          (hsPkgs."lens-family-th" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-th"))
          (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."monadlist" or ((hsPkgs.pkgs-errors).buildDepError "monadlist"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."parser-combinators" or ((hsPkgs.pkgs-errors).buildDepError "parser-combinators"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."ref-tf" or ((hsPkgs.pkgs-errors).buildDepError "ref-tf"))
          (hsPkgs."regex-tdfa" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa"))
          (hsPkgs."regex-tdfa-text" or ((hsPkgs.pkgs-errors).buildDepError "regex-tdfa-text"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."these" or ((hsPkgs.pkgs-errors).buildDepError "these"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
          ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or ((hsPkgs.pkgs-errors).buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
          (hsPkgs."cryptohash-sha1" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha1"))
          (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
          (hsPkgs."cryptohash-sha512" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha512"))
          (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
          ]) ++ [
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."lens-family-core" or ((hsPkgs.pkgs-errors).buildDepError "lens-family-core"))
          ]) ++ (if compiler.isGhcjs && true
          then [
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            ]
          else [
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            ]);
        buildable = true;
        };
      exes = {
        "hnix" = {
          depends = ([
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."comonad" or ((hsPkgs.pkgs-errors).buildDepError "comonad"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashing" or ((hsPkgs.pkgs-errors).buildDepError "hashing"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."hnix" or ((hsPkgs.pkgs-errors).buildDepError "hnix"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."ref-tf" or ((hsPkgs.pkgs-errors).buildDepError "ref-tf"))
            (hsPkgs."repline" or ((hsPkgs.pkgs-errors).buildDepError "repline"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or ((hsPkgs.pkgs-errors).buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      tests = {
        "hnix-tests" = {
          depends = ([
            (hsPkgs."Diff" or ((hsPkgs.pkgs-errors).buildDepError "Diff"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."dependent-sum" or ((hsPkgs.pkgs-errors).buildDepError "dependent-sum"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."generic-random" or ((hsPkgs.pkgs-errors).buildDepError "generic-random"))
            (hsPkgs."hashing" or ((hsPkgs.pkgs-errors).buildDepError "hashing"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hnix" or ((hsPkgs.pkgs-errors).buildDepError "hnix"))
            (hsPkgs."interpolate" or ((hsPkgs.pkgs-errors).buildDepError "interpolate"))
            (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."tasty-th" or ((hsPkgs.pkgs-errors).buildDepError "tasty-th"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or ((hsPkgs.pkgs-errors).buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      benchmarks = {
        "hnix-benchmarks" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."data-fix" or ((hsPkgs.pkgs-errors).buildDepError "data-fix"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hashing" or ((hsPkgs.pkgs-errors).buildDepError "hashing"))
            (hsPkgs."hnix" or ((hsPkgs.pkgs-errors).buildDepError "hnix"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            ] ++ (pkgs.lib).optional (system.isLinux && (compiler.isGhc && (compiler.version).ge "8.2") && (compiler.isGhc && (compiler.version).lt "8.3")) (hsPkgs."compact" or ((hsPkgs.pkgs-errors).buildDepError "compact"))) ++ (pkgs.lib).optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
            (hsPkgs."cryptohash-md5" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-md5"))
            (hsPkgs."cryptohash-sha1" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha1"))
            (hsPkgs."cryptohash-sha256" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha256"))
            (hsPkgs."cryptohash-sha512" or ((hsPkgs.pkgs-errors).buildDepError "cryptohash-sha512"))
            (hsPkgs."serialise" or ((hsPkgs.pkgs-errors).buildDepError "serialise"))
            ];
          buildable = if compiler.isGhcjs && true then false else true;
          };
        };
      };
    }