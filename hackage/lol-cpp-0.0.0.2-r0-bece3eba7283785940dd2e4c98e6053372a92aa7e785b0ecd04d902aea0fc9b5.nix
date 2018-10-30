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
        name = "lol-cpp";
        version = "0.0.0.2";
      };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "A fast C++ backend for <https://hackage.haskell.org/package/lol lol>.";
      description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nThis package provides a C++ implementation of Lol's Tensor interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.arithmoi)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.data-default)
          (hsPkgs.deepseq)
          (hsPkgs.lol)
          (hsPkgs.monadcryptorandom)
          (hsPkgs.MonadRandom)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
          (hsPkgs.random)
          (hsPkgs.reflection)
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
        "test-lol-cpp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lol-cpp)
            (hsPkgs.lol-tests)
          ];
        };
      };
      benchmarks = {
        "bench-lol-cpp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.DRBG)
            (hsPkgs.lol)
            (hsPkgs.lol-benches)
            (hsPkgs.lol-cpp)
          ];
        };
      };
    };
  }