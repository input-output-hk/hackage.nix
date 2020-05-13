{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { comparison-bench = false; small-bench = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "store"; version = "0.4.3"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
          (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."th-reify-many" or (errorHandler.buildDepError "th-reify-many"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
          (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
          (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
          (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
          (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
          (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          ];
        buildable = true;
        };
      tests = {
        "store-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."th-reify-many" or (errorHandler.buildDepError "th-reify-many"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            ];
          buildable = true;
          };
        "store-weigh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."th-reify-many" or (errorHandler.buildDepError "th-reify-many"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."cereal-vector" or (errorHandler.buildDepError "cereal-vector"))
            (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "store-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."store-core" or (errorHandler.buildDepError "store-core"))
            (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."th-reify-many" or (errorHandler.buildDepError "th-reify-many"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
            (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-smallcheck" or (errorHandler.buildDepError "hspec-smallcheck"))
            (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
            (hsPkgs."lifted-base" or (errorHandler.buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (errorHandler.buildDepError "monad-control"))
            (hsPkgs."mono-traversable" or (errorHandler.buildDepError "mono-traversable"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."smallcheck" or (errorHandler.buildDepError "smallcheck"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."th-lift" or (errorHandler.buildDepError "th-lift"))
            (hsPkgs."th-lift-instances" or (errorHandler.buildDepError "th-lift-instances"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."void" or (errorHandler.buildDepError "void"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."streaming-commons" or (errorHandler.buildDepError "streaming-commons"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."store" or (errorHandler.buildDepError "store"))
            ] ++ (pkgs.lib).optionals (flags.comparison-bench) [
            (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."vector-binary-instances" or (errorHandler.buildDepError "vector-binary-instances"))
            (hsPkgs."cereal-vector" or (errorHandler.buildDepError "cereal-vector"))
            ];
          buildable = true;
          };
        };
      };
    }