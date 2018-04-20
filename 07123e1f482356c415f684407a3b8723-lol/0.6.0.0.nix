{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      llvm = false;
      opt = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lol";
          version = "0.6.0.0";
        };
        license = "GPL-2.0-only";
        copyright = "Eric Crockett, Chris Peikert";
        maintainer = "Eric Crockett <ecrockett0@gmail.com>";
        author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
        homepage = "https://github.com/cpeikert/Lol";
        url = "";
        synopsis = "A library for lattice cryptography.";
        description = "Λ ∘ λ (Lol) is a general-purpose library for ring-based lattice cryptography.\nFor a detailed description of interfaces and functionality, see\n<https://eprint.iacr.org/2015/1134 Λ ∘ λ: Functional Lattice Cryptography>.\nBackends for the library include <https://hackage.haskell.org/package/lol-cpp lol-cpp>\nand <https://hackage.haskell.org/package/lol-repa lol-repa>.\nFor example cryptographic applications, see <https://hackage.haskell.org/package/lol-apps lol-apps>.";
        buildType = "Simple";
      };
      components = {
        lol = {
          depends  = [
            hsPkgs.arithmoi
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.crypto-api
            hsPkgs.data-default
            hsPkgs.deepseq
            hsPkgs.directory
            hsPkgs.monadcryptorandom
            hsPkgs.MonadRandom
            hsPkgs.mtl
            hsPkgs.numeric-prelude
            hsPkgs.protocol-buffers
            hsPkgs.protocol-buffers-descriptor
            hsPkgs.random
            hsPkgs.reflection
            hsPkgs.singletons
            hsPkgs.tagged-transformer
            hsPkgs.template-haskell
            hsPkgs.vector
            hsPkgs.vector-th-unbox
          ];
        };
      };
    }