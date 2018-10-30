{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "classy-prelude";
        version = "0.12.5";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.lifted-base)
          (hsPkgs.mono-traversable)
          (hsPkgs.exceptions)
          (hsPkgs.semigroups)
          (hsPkgs.vector-instances)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.chunked-data)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.ghc-prim)
          (hsPkgs.stm)
          (hsPkgs.primitive)
          (hsPkgs.mtl)
          (hsPkgs.bifunctors)
          (hsPkgs.mutable-containers)
          (hsPkgs.dlist)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.classy-prelude)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }