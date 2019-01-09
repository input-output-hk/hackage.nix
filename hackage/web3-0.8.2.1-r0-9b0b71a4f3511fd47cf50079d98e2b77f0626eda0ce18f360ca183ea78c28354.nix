{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; solidity = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "web3"; version = "0.8.2.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Alexander Krupenkin 2016";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/airalab/hs-web3#readme";
      url = "";
      synopsis = "Ethereum API for Haskell";
      description = "Web3 is a Haskell client library for Ethereum";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.OneTuple)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.basement)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
          (hsPkgs.generics-sop)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.machines)
          (hsPkgs.memory)
          (hsPkgs.microlens)
          (hsPkgs.microlens-aeson)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.relapse)
          (hsPkgs.secp256k1-haskell)
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.vinyl)
          ] ++ (pkgs.lib).optional (flags.solidity) (hsPkgs.containers);
        libs = (pkgs.lib).optional (flags.solidity) (pkgs."solidity");
        };
      tests = {
        "live" = {
          depends = [
            (hsPkgs.OneTuple)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.basement)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-expectations)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.machines)
            (hsPkgs.memory)
            (hsPkgs.microlens)
            (hsPkgs.microlens-aeson)
            (hsPkgs.microlens-mtl)
            (hsPkgs.microlens-th)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.relapse)
            (hsPkgs.secp256k1-haskell)
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.vinyl)
            (hsPkgs.web3)
            ];
          };
        "unit" = {
          depends = [
            (hsPkgs.OneTuple)
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.basement)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default)
            (hsPkgs.exceptions)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-expectations)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.machines)
            (hsPkgs.memory)
            (hsPkgs.microlens)
            (hsPkgs.microlens-aeson)
            (hsPkgs.microlens-mtl)
            (hsPkgs.microlens-th)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.relapse)
            (hsPkgs.secp256k1-haskell)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.vinyl)
            (hsPkgs.web3)
            ];
          };
        };
      };
    }