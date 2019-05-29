{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "merkle-log"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019, Kadena LLC";
      maintainer = "Lars Kuhtz <lars@kadena.io>";
      author = "Lars Kuhtz";
      homepage = "https://github.com/kadena-io/merkle-log";
      url = "";
      synopsis = "Merkle Tree Logs";
      description = "Binary Merkle Trees";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.memory)
          (hsPkgs.text)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.merkle-log)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.exceptions)
            (hsPkgs.memory)
            ];
          };
        };
      benchmarks = {
        "benchmarks" = {
          depends = [
            (hsPkgs.merkle-log)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
            (hsPkgs.criterion)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.hash-tree)
            (hsPkgs.memory)
            (hsPkgs.merkle-tree)
            (hsPkgs.mwc-random)
            (hsPkgs.random)
            (hsPkgs.random-bytestring)
            ];
          };
        };
      };
    }