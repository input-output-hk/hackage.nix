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
        name = "bitcoin-tx";
        version = "0.13.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Leon Mergen";
      maintainer = "leon@solatis.com";
      author = "Leon Mergen";
      homepage = "http://www.leonmergen.com/opensource.html";
      url = "";
      synopsis = "Utility functions for manipulating bitcoin transactions";
      description = "This library provides the same functionality as the bitcoin-tx command line\nutility, which was introduced in Bitcoin Core v0.10. These functions are\npure and require no communication with a bitcoin daemon.";
      buildType = "Simple";
    };
    components = {
      "bitcoin-tx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.hexstring)
          (hsPkgs.lens)
          (hsPkgs.cryptohash)
          (hsPkgs.bitcoin-types)
          (hsPkgs.bitcoin-script)
        ];
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.bytestring)
            (hsPkgs.hexstring)
            (hsPkgs.bitcoin-tx)
            (hsPkgs.bitcoin-script)
          ];
        };
      };
    };
  }