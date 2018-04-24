{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      comparison-bench = false;
      small-bench = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "store";
          version = "0.2.1.1";
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
        store = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.base-orphans
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.cryptohash
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.fail
            hsPkgs.filepath
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.hspec
            hsPkgs.hspec-smallcheck
            hsPkgs.integer-gmp
            hsPkgs.lifted-base
            hsPkgs.monad-control
            hsPkgs.mono-traversable
            hsPkgs.primitive
            hsPkgs.resourcet
            hsPkgs.safe
            hsPkgs.semigroups
            hsPkgs.smallcheck
            hsPkgs.store-core
            hsPkgs.syb
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-lift
            hsPkgs.th-lift-instances
            hsPkgs.th-orphans
            hsPkgs.th-reify-many
            hsPkgs.th-utilities
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.void
          ] ++ pkgs.lib.optional (!system.isI386 && !system.isX86_64 && !system.isIa64 && !(compiler.isGhcjs && true)) hsPkgs.base;
        };
        tests = {
          store-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.store-core
              hsPkgs.th-utilities
              hsPkgs.primitive
              hsPkgs.th-reify-many
              hsPkgs.array
              hsPkgs.base-orphans
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.fail
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.hspec-smallcheck
              hsPkgs.integer-gmp
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mono-traversable
              hsPkgs.resourcet
              hsPkgs.safe
              hsPkgs.semigroups
              hsPkgs.smallcheck
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.th-lift
              hsPkgs.th-lift-instances
              hsPkgs.th-orphans
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.void
              hsPkgs.store
            ];
          };
          store-weigh = {
            depends  = [
              hsPkgs.base
              hsPkgs.store-core
              hsPkgs.th-utilities
              hsPkgs.primitive
              hsPkgs.th-reify-many
              hsPkgs.array
              hsPkgs.base-orphans
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.fail
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.hspec-smallcheck
              hsPkgs.integer-gmp
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mono-traversable
              hsPkgs.resourcet
              hsPkgs.safe
              hsPkgs.semigroups
              hsPkgs.smallcheck
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.th-lift
              hsPkgs.th-lift-instances
              hsPkgs.th-orphans
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.void
              hsPkgs.store
              hsPkgs.weigh
              hsPkgs.criterion
              hsPkgs.cereal
              hsPkgs.cereal-vector
              hsPkgs.vector-binary-instances
            ];
          };
        };
        benchmarks = {
          store-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.store-core
              hsPkgs.th-utilities
              hsPkgs.primitive
              hsPkgs.th-reify-many
              hsPkgs.array
              hsPkgs.base-orphans
              hsPkgs.base64-bytestring
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.cryptohash
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.fail
              hsPkgs.filepath
              hsPkgs.ghc-prim
              hsPkgs.hashable
              hsPkgs.hspec
              hsPkgs.hspec-smallcheck
              hsPkgs.integer-gmp
              hsPkgs.lifted-base
              hsPkgs.monad-control
              hsPkgs.mono-traversable
              hsPkgs.resourcet
              hsPkgs.safe
              hsPkgs.semigroups
              hsPkgs.smallcheck
              hsPkgs.syb
              hsPkgs.template-haskell
              hsPkgs.text
              hsPkgs.th-lift
              hsPkgs.th-lift-instances
              hsPkgs.th-orphans
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.void
              hsPkgs.criterion
              hsPkgs.store
            ] ++ pkgs.lib.optionals _flags.comparison-bench [
              hsPkgs.cereal
              hsPkgs.binary
              hsPkgs.vector-binary-instances
              hsPkgs.cereal-vector
            ];
          };
        };
      };
    }