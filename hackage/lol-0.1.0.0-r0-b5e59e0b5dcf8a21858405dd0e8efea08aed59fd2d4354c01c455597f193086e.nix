{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { useicc = false; llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "lol"; version = "0.1.0.0"; };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A library for lattice cryptography.";
      description = "Λ ○ λ (Lol) is a general-purpose library for ring-based lattice cryptography.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.repa)
          (hsPkgs.singletons)
          (hsPkgs.storable-record)
          (hsPkgs.storable-tuple)
          (hsPkgs.th-desugar)
          (hsPkgs.type-natural)
          (hsPkgs.tagged-transformer)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
          ];
        };
      tests = {
        "lol-test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.lol)
            (hsPkgs.MonadRandom)
            (hsPkgs.QuickCheck)
            (hsPkgs.repa)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.time)
            (hsPkgs.type-natural)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }