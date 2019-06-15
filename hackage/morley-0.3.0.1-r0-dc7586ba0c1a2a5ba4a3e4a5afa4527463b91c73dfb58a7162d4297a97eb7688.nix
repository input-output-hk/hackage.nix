{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "morley"; version = "0.3.0.1"; };
      license = "AGPL-3.0-or-later";
      copyright = "2018 camlCase, 2019 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "Developer tools for the Michelson Language";
      description = "A library to make writing smart contracts in Michelson — the smart contract language of the Tezos blockchain — pleasant and effective.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.aeson-options)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base-noprelude)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base58-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.constraints)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.fmt)
          (hsPkgs.formatting)
          (hsPkgs.ghc-prim)
          (hsPkgs.hex-text)
          (hsPkgs.hspec)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.morley-prelude)
          (hsPkgs.mtl)
          (hsPkgs.named)
          (hsPkgs.parser-combinators)
          (hsPkgs.quickcheck-arbitrary-adt)
          (hsPkgs.quickcheck-instances)
          (hsPkgs.singletons)
          (hsPkgs.syb)
          (hsPkgs.tasty)
          (hsPkgs.tasty-ant-xml)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
          (hsPkgs.transformers-compat)
          (hsPkgs.vector)
          (hsPkgs.vinyl)
          (hsPkgs.wl-pprint-text)
          ];
        };
      exes = {
        "contract-discover" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fmt)
            (hsPkgs.megaparsec)
            (hsPkgs.morley)
            (hsPkgs.morley-prelude)
            (hsPkgs.text)
            ];
          };
        "morley" = {
          depends = [
            (hsPkgs.base-noprelude)
            (hsPkgs.fmt)
            (hsPkgs.morley)
            (hsPkgs.morley-prelude)
            (hsPkgs.named)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty-simple)
            ];
          };
        };
      tests = {
        "morley-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base-noprelude)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fmt)
            (hsPkgs.formatting)
            (hsPkgs.generic-arbitrary)
            (hsPkgs.hex-text)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.morley)
            (hsPkgs.morley-prelude)
            (hsPkgs.mtl)
            (hsPkgs.qm-interpolated-string)
            (hsPkgs.quickcheck-arbitrary-adt)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.singletons)
            (hsPkgs.syb)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover))
            ];
          };
        };
      };
    }