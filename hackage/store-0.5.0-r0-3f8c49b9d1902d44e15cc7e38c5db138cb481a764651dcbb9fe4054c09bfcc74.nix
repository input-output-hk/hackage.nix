{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      comparison-bench = false;
      small-bench = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "store";
        version = "0.5.0";
      };
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
        depends  = [
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.base-orphans)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.contravariant)
          (hsPkgs.cryptohash)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.free)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.hspec)
          (hsPkgs.hspec-smallcheck)
          (hsPkgs.integer-gmp)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-control)
          (hsPkgs.mono-traversable)
          (hsPkgs.network)
          (hsPkgs.primitive)
          (hsPkgs.resourcet)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.smallcheck)
          (hsPkgs.store-core)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.th-lift-instances)
          (hsPkgs.th-orphans)
          (hsPkgs.th-reify-many)
          (hsPkgs.th-utilities)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.void)
        ];
      };
      tests = {
        "store-test" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.integer-gmp)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mono-traversable)
            (hsPkgs.network)
            (hsPkgs.primitive)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.smallcheck)
            (hsPkgs.store)
            (hsPkgs.store-core)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.th-lift-instances)
            (hsPkgs.th-orphans)
            (hsPkgs.th-reify-many)
            (hsPkgs.th-utilities)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.void)
          ];
        };
        "store-weigh" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cereal-vector)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.criterion)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.integer-gmp)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mono-traversable)
            (hsPkgs.network)
            (hsPkgs.primitive)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.smallcheck)
            (hsPkgs.store)
            (hsPkgs.store-core)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.th-lift-instances)
            (hsPkgs.th-orphans)
            (hsPkgs.th-reify-many)
            (hsPkgs.th-utilities)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vector-binary-instances)
            (hsPkgs.void)
            (hsPkgs.weigh)
          ];
        };
      };
      benchmarks = {
        "store-bench" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base-orphans)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.contravariant)
            (hsPkgs.criterion)
            (hsPkgs.cryptohash)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.free)
            (hsPkgs.ghc-prim)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.hspec-smallcheck)
            (hsPkgs.integer-gmp)
            (hsPkgs.lifted-base)
            (hsPkgs.monad-control)
            (hsPkgs.mono-traversable)
            (hsPkgs.network)
            (hsPkgs.primitive)
            (hsPkgs.resourcet)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.smallcheck)
            (hsPkgs.store)
            (hsPkgs.store-core)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.th-lift-instances)
            (hsPkgs.th-orphans)
            (hsPkgs.th-reify-many)
            (hsPkgs.th-utilities)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.void)
          ] ++ pkgs.lib.optionals (flags.comparison-bench) [
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.cereal-vector)
            (hsPkgs.vector-binary-instances)
          ];
        };
      };
    };
  }