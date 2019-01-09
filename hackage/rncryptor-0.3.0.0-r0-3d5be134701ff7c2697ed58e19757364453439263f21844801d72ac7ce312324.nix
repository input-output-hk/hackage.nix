{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { fastpbkdf2 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "rncryptor"; version = "0.3.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Haskell implementation of the RNCryptor file format";
      description = "Pure Haskell implementation of the RNCrytor spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.random)
          (hsPkgs.QuickCheck)
          (hsPkgs.io-streams)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          ] ++ (pkgs.lib).optional (flags.fastpbkdf2) (hsPkgs.fastpbkdf2);
        };
      exes = {
        "rncryptor-decrypt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.io-streams)
            (hsPkgs.rncryptor)
            ];
          };
        "rncryptor-encrypt" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.io-streams)
            (hsPkgs.cryptonite)
            (hsPkgs.rncryptor)
            ];
          };
        };
      tests = {
        "rncryptor-tests" = {
          depends = [
            (hsPkgs.rncryptor)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.io-streams)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.text)
            (hsPkgs.bytestring-arbitrary)
            ];
          };
        };
      benchmarks = {
        "store-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.rncryptor)
            ];
          };
        };
      };
    }