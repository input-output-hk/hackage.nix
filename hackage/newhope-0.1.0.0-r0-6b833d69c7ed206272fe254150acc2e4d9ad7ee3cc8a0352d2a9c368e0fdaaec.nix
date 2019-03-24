{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "newhope"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "© 2019 Jeremy Bornstein";
      maintainer = "jeremy@bornstein.org";
      author = "Jeremy Bornstein";
      homepage = "https://github.com/unprolix/newhope#README.md";
      url = "";
      synopsis = "Library implementing the NewHope cryptographic key-exchange protocol";
      description = "This is a Haskell implementation of the NewHope key exchange protocol. It has been made via examination of the official NewHope project's public domain C reference code and the author is not affiliated with that team or with NIST. For further details please see the package README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.AES)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "PQCgenKAT" = {
          depends = [
            (hsPkgs.AES)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.vector)
            ];
          };
        "speed" = {
          depends = [
            (hsPkgs.AES)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.mtl)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "libtest" = {
          depends = [
            (hsPkgs.AES)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hspec)
            (hsPkgs.mtl)
            (hsPkgs.parallel)
            (hsPkgs.raw-strings-qq)
            (hsPkgs.statistics)
            (hsPkgs.system-fileio)
            (hsPkgs.system-filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-expected-failure)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.trifecta)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }