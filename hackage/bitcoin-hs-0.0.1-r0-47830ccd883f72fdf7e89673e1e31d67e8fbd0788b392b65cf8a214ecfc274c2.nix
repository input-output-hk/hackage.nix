{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      testnet = false;
      x86asm = false;
      network-uri = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bitcoin-hs";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, 2016 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "Partial implementation of the Bitcoin protocol (as of 2013)";
      description = "Partial but self-contained implementation of the Bitcoin protocol (as of 2013). Use at your own risk!";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.deepseq)
          (hsPkgs.ghc-prim)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.HTTP)
          (hsPkgs.binary)
          (hsPkgs.json)
        ] ++ [
          (hsPkgs.network-uri)
          (hsPkgs.network)
        ];
      };
      tests = {
        "bitcoin-hs-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.random)
            (hsPkgs.binary)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.bitcoin-hs)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }