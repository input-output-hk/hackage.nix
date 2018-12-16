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
        name = "ethereum-client-haskell";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamshidnh@gmail.com";
      author = "Jamshid";
      homepage = "";
      url = "";
      synopsis = "A Haskell version of an Ethereum client";
      description = "The client described in the Ethereum Yellowpaper";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ethereumH" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.either)
            (hsPkgs.entropy)
            (hsPkgs.ethereum-merkle-patricia-db)
            (hsPkgs.ethereum-rlp)
            (hsPkgs.filepath)
            (hsPkgs.haskoin)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.network-simple)
            (hsPkgs.nibblestring)
            (hsPkgs.resourcet)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
        "queryEth" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.cmdargs)
            (hsPkgs.cryptohash)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.ethereum-rlp)
            (hsPkgs.ethereum-merkle-patricia-db)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.network-simple)
            (hsPkgs.nibblestring)
            (hsPkgs.haskoin)
            (hsPkgs.base16-bytestring)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.data-default)
            (hsPkgs.leveldb-haskell)
            (hsPkgs.array)
            (hsPkgs.directory)
          ];
        };
      };
      tests = {
        "test-ethereumH" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }