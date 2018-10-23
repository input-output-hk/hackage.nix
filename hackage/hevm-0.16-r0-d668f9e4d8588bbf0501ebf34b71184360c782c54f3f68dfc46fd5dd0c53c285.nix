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
        name = "hevm";
        version = "0.16";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "mikael@brockman.se";
      author = "Mikael Brockman";
      homepage = "https://github.com/dapphub/dapptools";
      url = "";
      synopsis = "Ethereum virtual machine evaluator";
      description = "Hevm implements the Ethereum virtual machine semantics.\n\nIt can be used as a library, and it also comes with an executable\nthat can run unit test suites, optionally with a visual TTY debugger.";
      buildType = "Simple";
    };
    components = {
      "hevm" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.abstract-par)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.brick)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.cryptonite)
          (hsPkgs.data-dword)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.ghci-pretty)
          (hsPkgs.haskeline)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.megaparsec)
          (hsPkgs.memory)
          (hsPkgs.monad-par)
          (hsPkgs.mtl)
          (hsPkgs.multiset)
          (hsPkgs.operational)
          (hsPkgs.optparse-generic)
          (hsPkgs.process)
          (hsPkgs.quickcheck-text)
          (hsPkgs.readline)
          (hsPkgs.restless-git)
          (hsPkgs.rosezipper)
          (hsPkgs.scientific)
          (hsPkgs.s-cargot)
          (hsPkgs.temporary)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.tree-view)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.vty)
          (hsPkgs.wreq)
        ];
        libs = [ (pkgs."secp256k1") ];
      };
      exes = {
        "hevm" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.binary)
            (hsPkgs.brick)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptonite)
            (hsPkgs.data-dword)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ghci-pretty)
            (hsPkgs.hevm)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.optparse-generic)
            (hsPkgs.process)
            (hsPkgs.quickcheck-text)
            (hsPkgs.readline)
            (hsPkgs.regex-tdfa)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.text-format)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vty)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.ghci-pretty)
            (hsPkgs.hevm)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.mtl)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.here)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.binary)
          ];
          libs = [ (pkgs."secp256k1") ];
        };
      };
    };
  }