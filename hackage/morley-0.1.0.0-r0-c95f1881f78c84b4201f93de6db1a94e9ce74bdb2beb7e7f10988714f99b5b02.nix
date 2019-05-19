{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "morley"; version = "0.1.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "2018 camlCase, 2019 Tocqueville Group";
      maintainer = "john@camlcase.io";
      author = "camlCase, Serokell";
      homepage = "https://gitlab.com/camlcase-dev/morley";
      url = "";
      synopsis = "Developer tools for the Michelson Language";
      description = "A library to make writing smart contracts in Michelson — the smart contract\nlanguage of the Tezos blockchain — pleasant and effective.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-options)
          (hsPkgs.base-noprelude)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base58-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.fmt)
          (hsPkgs.formatting)
          (hsPkgs.hspec)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.morley-prelude)
          (hsPkgs.named)
          (hsPkgs.natural-numbers)
          (hsPkgs.QuickCheck)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.parser-combinators)
          (hsPkgs.directory)
          (hsPkgs.singletons)
          (hsPkgs.syb)
          (hsPkgs.mtl)
          (hsPkgs.vinyl)
          ];
        build-tools = [
          (hsPkgs.buildPackages.autoexporter or (pkgs.buildPackages.autoexporter))
          ];
        };
      exes = {
        "morley" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.fmt)
            (hsPkgs.megaparsec)
            (hsPkgs.morley)
            (hsPkgs.morley-prelude)
            (hsPkgs.named)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-simple)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "morley-test" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base-noprelude)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fmt)
            (hsPkgs.formatting)
            (hsPkgs.hspec)
            (hsPkgs.hspec-golden-aeson)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.morley)
            (hsPkgs.morley-prelude)
            (hsPkgs.QuickCheck)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.universum)
            (hsPkgs.vinyl)
            ];
          };
        };
      };
    }