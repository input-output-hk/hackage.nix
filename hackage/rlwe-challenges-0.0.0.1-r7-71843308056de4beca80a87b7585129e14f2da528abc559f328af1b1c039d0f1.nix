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
      specVersion = "1.10";
      identifier = {
        name = "rlwe-challenges";
        version = "0.0.0.1";
      };
      license = "GPL-2.0-only";
      copyright = "Eric Crockett, Chris Peikert";
      maintainer = "Eric Crockett <ecrockett0@gmail.com>";
      author = "Eric Crockett <ecrockett0@gmail.com>, Chris Peikert <cpeikert@alum.mit.edu>";
      homepage = "https://github.com/cpeikert/Lol";
      url = "";
      synopsis = "Ring-LWE/LWR challenges using Lol.";
      description = "Contains a library for reading serialized challenges (generated with <https://hackage.haskell.org/package/hprotoc hprotoc>) and an executable used to generate, suppress, and verify RLWE and RLWR challenges using <https://hackage.haskell.org/package/lol Λ ∘ λ> (Lol). You can find more information about the challenges <https://web.eecs.umich.edu/~cpeikert/rlwe-challenges here>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lol)
          (hsPkgs.MonadRandom)
          (hsPkgs.protocol-buffers)
          (hsPkgs.protocol-buffers-descriptor)
        ];
      };
      exes = {
        "rlwe-challenges" = {
          depends  = [
            (hsPkgs.ansi-terminal)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.DRBG)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.lol)
            (hsPkgs.MonadRandom)
            (hsPkgs.mtl)
            (hsPkgs.options)
            (hsPkgs.nist-beacon)
            (hsPkgs.parsec)
            (hsPkgs.protocol-buffers)
            (hsPkgs.reflection)
            (hsPkgs.rlwe-challenges)
            (hsPkgs.tagged)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }