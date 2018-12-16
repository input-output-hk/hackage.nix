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
        name = "bitcoin-api";
        version = "0.11.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Provides access to the RPC API of Bitcoin Core";
      description = "The Bitcoin Core application provides an HTTP RPC interface for communication.\nThis library implements access to these functions. It builds on top of the\n`bitcoin-tx` and `bitcoin-script`, and as such provides an extremely flexible\nenvironment to create, manipulate and store transactions and custom scripts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.hexstring)
          (hsPkgs.base58string)
          (hsPkgs.aeson)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.wreq)
          (hsPkgs.bitcoin-types)
          (hsPkgs.bitcoin-block)
          (hsPkgs.bitcoin-tx)
          (hsPkgs.bitcoin-script)
        ];
      };
      tests = {
        "test-suite" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.base58string)
            (hsPkgs.http-client)
            (hsPkgs.wreq)
            (hsPkgs.lens)
            (hsPkgs.hspec)
            (hsPkgs.bitcoin-tx)
            (hsPkgs.bitcoin-script)
            (hsPkgs.bitcoin-api)
          ];
        };
      };
    };
  }