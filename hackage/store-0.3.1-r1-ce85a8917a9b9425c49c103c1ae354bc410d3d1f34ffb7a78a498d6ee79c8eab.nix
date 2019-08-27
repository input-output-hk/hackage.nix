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
    flags = { comparison-bench = false; small-bench = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "store"; version = "0.3.1"; };
      license = "MIT";
      copyright = "2016 FP Complete";
      maintainer = "Michael Sloan <sloan@fpcomplete.com>";
      author = "";
      homepage = "https://github.com/fpco/store#readme";
      url = "";
      synopsis = "Fast binary serialization";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."store-core" or (buildDepError "store-core"))
          (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
          (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
          (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
          (hsPkgs."syb" or (buildDepError "syb"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."th-lift" or (buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
          (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."void" or (buildDepError "void"))
          (hsPkgs."free" or (buildDepError "free"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."contravariant" or (buildDepError "contravariant"))
          ];
        };
      tests = {
        "store-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."store-core" or (buildDepError "store-core"))
            (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
            (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."store" or (buildDepError "store"))
            ];
          };
        "store-weigh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."store-core" or (buildDepError "store-core"))
            (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
            (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."store" or (buildDepError "store"))
            (hsPkgs."weigh" or (buildDepError "weigh"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
            (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
            ];
          };
        };
      benchmarks = {
        "store-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."store-core" or (buildDepError "store-core"))
            (hsPkgs."th-utilities" or (buildDepError "th-utilities"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."th-reify-many" or (buildDepError "th-reify-many"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."base-orphans" or (buildDepError "base-orphans"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptohash" or (buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (buildDepError "hspec-smallcheck"))
            (hsPkgs."integer-gmp" or (buildDepError "integer-gmp"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."mono-traversable" or (buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."safe" or (buildDepError "safe"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (buildDepError "smallcheck"))
            (hsPkgs."syb" or (buildDepError "syb"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."th-lift" or (buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (buildDepError "th-lift-instances"))
            (hsPkgs."th-orphans" or (buildDepError "th-orphans"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."void" or (buildDepError "void"))
            (hsPkgs."free" or (buildDepError "free"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."streaming-commons" or (buildDepError "streaming-commons"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."contravariant" or (buildDepError "contravariant"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."store" or (buildDepError "store"))
            ] ++ (pkgs.lib).optionals (flags.comparison-bench) [
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
            (hsPkgs."cereal-vector" or (buildDepError "cereal-vector"))
            ];
          };
        };
      };
    }