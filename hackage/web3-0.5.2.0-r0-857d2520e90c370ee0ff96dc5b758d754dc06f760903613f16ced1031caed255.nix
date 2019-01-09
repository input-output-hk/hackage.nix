{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "web3"; version = "0.5.2.0"; };
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
        depends = [
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.http-client-tls)
          (hsPkgs.transformers)
          (hsPkgs.http-client)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.vector)
          (hsPkgs.memory)
          (hsPkgs.aeson)
          (hsPkgs.text)
          ];
        };
      tests = {
        "web3-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.memory)
            (hsPkgs.text)
            (hsPkgs.web3)
            ];
          };
        };
      };
    }