{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { compiler = false; debug = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "web3"; version = "0.8.3.0"; };
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
          (hsPkgs.tagged)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.uuid-types)
          (hsPkgs.vinyl)
          ] ++ (pkgs.lib).optional (flags.compiler) (hsPkgs.containers);
        libs = (pkgs.lib).optional (flags.compiler) (pkgs."solidity");
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
            (hsPkgs.split)
            (hsPkgs.stm)
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.uuid-types)
            (hsPkgs.vinyl)
            ] ++ (pkgs.lib).optional (flags.compiler) (hsPkgs.containers);
          libs = (pkgs.lib).optional (flags.compiler) (pkgs."solidity");
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
            (hsPkgs.tagged)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.uuid-types)
            (hsPkgs.vinyl)
            ] ++ (pkgs.lib).optional (flags.compiler) (hsPkgs.containers);
          libs = (pkgs.lib).optional (flags.compiler) (pkgs."solidity");
          };
        };
      };
    }