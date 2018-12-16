{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      llvm = false;
      opt = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lol";
        version = "0.5.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A library for lattice cryptography.";
      description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nFor a detailed description of interfaces and functionality, see\n<https://eprint.iacr.org/2015/1134 Λ ∘ λ: Functional Lattice Cryptography>.\nFor example cryptographic applications, see <https://hackage.haskell.org/package/lol-apps lol-apps>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.monadcryptorandom)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.QuickCheck)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.random)
          (hsPkgs.reflection)
          (hsPkgs.repa)
          (hsPkgs.singletons)
          (hsPkgs.th-desugar)
          (hsPkgs.tagged-transformer)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.vector)
          (hsPkgs.vector-th-unbox)
        ];
      };
      tests = {
        "test-lol" = {
          depends = [
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.constraints)
            (hsPkgs.deepseq)
            (hsPkgs.DRBG)
            (hsPkgs.lol)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.repa)
            (hsPkgs.singletons)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.vector)
          ];
        };
      };
      benchmarks = {
        "bench-lol" = {
          depends = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.arithmoi)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.criterion)
            (hsPkgs.deepseq)
            (hsPkgs.DRBG)
            (hsPkgs.lol)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.singletons)
            (hsPkgs.statistics)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.repa)
          ];
        };
      };
    };
  }