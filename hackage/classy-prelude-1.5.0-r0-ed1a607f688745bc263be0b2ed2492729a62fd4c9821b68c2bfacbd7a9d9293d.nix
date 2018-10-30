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
      specVersion = "1.12";
      identifier = {
        name = "classy-prelude";
        version = "1.5.0";
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
      "library" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.chunked-data)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.dlist)
          (hsPkgs.ghc-prim)
          (hsPkgs.hashable)
          (hsPkgs.mono-traversable)
          (hsPkgs.mono-traversable-instances)
          (hsPkgs.mtl)
          (hsPkgs.mutable-containers)
          (hsPkgs.primitive)
          (hsPkgs.say)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.stm-chans)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vector-instances)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.classy-prelude)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }