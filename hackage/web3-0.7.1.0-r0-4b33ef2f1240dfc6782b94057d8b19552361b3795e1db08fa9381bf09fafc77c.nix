{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { tls = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "web3";
        version = "0.7.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Alexander Krupenkin";
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.data-default)
          (hsPkgs.generics-sop)
          (hsPkgs.transformers)
          (hsPkgs.http-client)
          (hsPkgs.exceptions)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.basement)
          (hsPkgs.machines)
          (hsPkgs.tagged)
          (hsPkgs.parsec)
          (hsPkgs.memory)
          (hsPkgs.cereal)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (flags.tls) (hsPkgs.http-client-tls);
      };
      tests = {
        "unit" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec)
            (hsPkgs.data-default)
            (hsPkgs.generics-sop)
            (hsPkgs.transformers)
            (hsPkgs.bytestring)
            (hsPkgs.memory)
            (hsPkgs.tagged)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.web3)
          ];
        };
        "live" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec-expectations)
            (hsPkgs.hspec-discover)
            (hsPkgs.hspec-contrib)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.data-default)
            (hsPkgs.bytestring)
            (hsPkgs.memory)
            (hsPkgs.tagged)
            (hsPkgs.split)
            (hsPkgs.async)
            (hsPkgs.time)
            (hsPkgs.text)
            (hsPkgs.stm)
            (hsPkgs.web3)
          ];
        };
      };
    };
  }