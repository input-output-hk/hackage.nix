{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "secp256k1-haskell";
        version = "0.1.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "(c) 2017 Jean-Pierre Rupp";
      maintainer = "xenog@protonmail.com";
      author = "Jean-Pierre Rupp";
      homepage = "http://github.com/haskoin/secp256k1-haskell#readme";
      url = "";
      synopsis = "Bindings for secp256k1 library from Bitcoin Core";
      description = "Sign and verify signatures using the very fast C secp256k1 library from Pieter Wuille. Has Haskell types and abstractions for keys and signatures.";
      buildType = "Simple";
    };
    components = {
      "secp256k1-haskell" = {
        depends  = [
          (hsPkgs.HUnit)
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cryptohash)
          (hsPkgs.entropy)
          (hsPkgs.hspec)
          (hsPkgs.mtl)
          (hsPkgs.string-conversions)
        ];
        libs = [ (pkgs."secp256k1") ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptohash)
            (hsPkgs.entropy)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.secp256k1-haskell)
            (hsPkgs.string-conversions)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }