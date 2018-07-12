{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "classy-prelude";
          version = "1.3.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/mono-traversable#readme";
        url = "";
        synopsis = "A typeclass-based Prelude.";
        description = "See docs and README at <http://www.stackage.org/package/classy-prelude>";
        buildType = "Simple";
      };
      components = {
        "classy-prelude" = {
          depends  = [
            hsPkgs.async
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.bifunctors
            hsPkgs.bytestring
            hsPkgs.chunked-data
            hsPkgs.containers
            hsPkgs.deepseq
            hsPkgs.dlist
            hsPkgs.exceptions
            hsPkgs.ghc-prim
            hsPkgs.hashable
            hsPkgs.lifted-async
            hsPkgs.lifted-base
            hsPkgs.monad-unlift
            hsPkgs.mono-traversable
            hsPkgs.mono-traversable-instances
            hsPkgs.mtl
            hsPkgs.mutable-containers
            hsPkgs.primitive
            hsPkgs.safe-exceptions
            hsPkgs.say
            hsPkgs.semigroups
            hsPkgs.stm
            hsPkgs.stm-chans
            hsPkgs.text
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-instances
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.base
              hsPkgs.classy-prelude
              hsPkgs.containers
              hsPkgs.hspec
              hsPkgs.transformers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }