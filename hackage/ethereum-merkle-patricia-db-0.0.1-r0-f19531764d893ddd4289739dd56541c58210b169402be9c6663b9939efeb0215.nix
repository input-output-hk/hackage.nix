{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ethereum-merkle-patricia-db"; version = "0.0.1"; };
      license = "BSD-3-Clause";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.resourcet)
          (hsPkgs.cryptohash)
          (hsPkgs.bytestring)
          (hsPkgs.base16-bytestring)
          (hsPkgs.data-default)
          (hsPkgs.nibblestring)
          (hsPkgs.leveldb-haskell)
          (hsPkgs.ethereum-rlp)
          (hsPkgs.binary)
          (hsPkgs.ansi-wl-pprint)
          ];
        };
      tests = {
        "test-merkel-patricia-db" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.resourcet)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.transformers)
            (hsPkgs.binary)
            (hsPkgs.ethereum-rlp)
            (hsPkgs.cryptohash)
            (hsPkgs.nibblestring)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
            ];
          };
        };
      };
    }