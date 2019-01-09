{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "confcrypt"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2018 Chris Coffey, CollegeVine";
      maintainer = "chris@collegevine.com";
      author = "Chris Coffey";
      homepage = "https://github.com/https://github.com/collegevine/confcrypt#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/CollegeVine/confcrypt#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-kms)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.crypto-pubkey-openssh)
          (hsPkgs.crypto-pubkey-types)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.parser-combinators)
          (hsPkgs.text)
          (hsPkgs.transformers)
          ];
        };
      exes = {
        "confcrypt" = {
          depends = [
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-kms)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.confcrypt)
            (hsPkgs.containers)
            (hsPkgs.crypto-pubkey-openssh)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parser-combinators)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      tests = {
        "confcrypt-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.amazonka)
            (hsPkgs.amazonka-kms)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.confcrypt)
            (hsPkgs.containers)
            (hsPkgs.crypto-pubkey-openssh)
            (hsPkgs.crypto-pubkey-types)
            (hsPkgs.cryptonite)
            (hsPkgs.deepseq)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parser-combinators)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }