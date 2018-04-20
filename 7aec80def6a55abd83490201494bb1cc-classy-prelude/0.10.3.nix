{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "classy-prelude";
          version = "0.10.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/classy-prelude";
        url = "";
        synopsis = "A typeclass-based Prelude.";
        description = "Modern best practices without name collisions. No partial functions are exposed, but modern data structures are, without requiring import lists. Qualified modules also are not needed: instead operations are based on type-classes from the mono-traversable package.";
        buildType = "Simple";
      };
      components = {
        classy-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.basic-prelude
            hsPkgs.system-filepath
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.hashable
            hsPkgs.lifted-base
            hsPkgs.mono-traversable
            hsPkgs.exceptions
            hsPkgs.semigroups
            hsPkgs.vector-instances
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.chunked-data
            hsPkgs.enclosed-exceptions
            hsPkgs.ghc-prim
            hsPkgs.stm
            hsPkgs.primitive
            hsPkgs.mtl
            hsPkgs.bifunctors
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.classy-prelude
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.QuickCheck
              hsPkgs.transformers
              hsPkgs.containers
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }