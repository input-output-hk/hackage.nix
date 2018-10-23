{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "merkle-patricia-db";
        version = "0.1.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "jamshidnh@gmail.com";
      author = "Jamshid";
      homepage = "";
      url = "";
      synopsis = "A modified Merkle Patricia DB";
      description = "The modified Merkle Patricia DB described in the Ethereum Yellowpaper";
      buildType = "Simple";
    };
    components = {
      "merkle-patricia-db" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.ethereum-rlp)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.nibblestring)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.memory)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test-merkle-patricia-db" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.resourcet)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.transformers)
            (hsPkgs.binary)
            (hsPkgs.ethereum-rlp)
            (hsPkgs.nibblestring)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            (hsPkgs.mtl)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
            (hsPkgs.merkle-patricia-db)
          ];
        };
      };
    };
  }