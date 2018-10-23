{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      brittany-dev-lib = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "brittany";
        version = "0.11.0.0";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2016-2018 Lennart Spitzner";
      maintainer = "Lennart Spitzner <hexagoxel@hexagoxel.de>";
      author = "Lennart Spitzner";
      homepage = "https://github.com/lspitzner/brittany/";
      url = "";
      synopsis = "Haskell source code formatter";
      description = "See <https://github.com/lspitzner/brittany/blob/master/README.md the README>.\n\nIf you are interested in the implementation, have a look at <https://github.com/lspitzner/brittany/blob/master/doc/implementation/theory.md this document>;\n\nThe implementation is documented in more detail <https://github.com/lspitzner/brittany/blob/master/doc/implementation/index.md here>.";
      buildType = "Simple";
    };
    components = {
      "brittany" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc-exactprint)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.multistate)
          (hsPkgs.syb)
          (hsPkgs.neat-interpolation)
          (hsPkgs.data-tree-print)
          (hsPkgs.pretty)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.butcher)
          (hsPkgs.yaml)
          (hsPkgs.aeson)
          (hsPkgs.extra)
          (hsPkgs.uniplate)
          (hsPkgs.strict)
          (hsPkgs.monad-memo)
          (hsPkgs.unsafe)
          (hsPkgs.safe)
          (hsPkgs.deepseq)
          (hsPkgs.semigroups)
          (hsPkgs.cmdargs)
          (hsPkgs.czipwith)
          (hsPkgs.ghc-boot-th)
          (hsPkgs.filepath)
          (hsPkgs.random)
        ];
      };
      exes = {
        "brittany" = {
          depends  = [
            (hsPkgs.brittany)
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.multistate)
            (hsPkgs.syb)
            (hsPkgs.neat-interpolation)
            (hsPkgs.data-tree-print)
            (hsPkgs.pretty)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.butcher)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.extra)
            (hsPkgs.uniplate)
            (hsPkgs.strict)
            (hsPkgs.monad-memo)
            (hsPkgs.unsafe)
            (hsPkgs.safe)
            (hsPkgs.deepseq)
            (hsPkgs.semigroups)
            (hsPkgs.cmdargs)
            (hsPkgs.czipwith)
            (hsPkgs.ghc-boot-th)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "unittests" = {
          depends  = [
            (hsPkgs.brittany)
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.multistate)
            (hsPkgs.syb)
            (hsPkgs.neat-interpolation)
            (hsPkgs.data-tree-print)
            (hsPkgs.pretty)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.butcher)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.extra)
            (hsPkgs.uniplate)
            (hsPkgs.strict)
            (hsPkgs.monad-memo)
            (hsPkgs.unsafe)
            (hsPkgs.safe)
            (hsPkgs.deepseq)
            (hsPkgs.semigroups)
            (hsPkgs.cmdargs)
            (hsPkgs.czipwith)
            (hsPkgs.ghc-boot-th)
            (hsPkgs.hspec)
          ];
        };
        "littests" = {
          depends  = [
            (hsPkgs.brittany)
            (hsPkgs.base)
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            (hsPkgs.ghc-exactprint)
            (hsPkgs.transformers)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.text)
            (hsPkgs.multistate)
            (hsPkgs.syb)
            (hsPkgs.neat-interpolation)
            (hsPkgs.data-tree-print)
            (hsPkgs.pretty)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.butcher)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.extra)
            (hsPkgs.uniplate)
            (hsPkgs.strict)
            (hsPkgs.monad-memo)
            (hsPkgs.unsafe)
            (hsPkgs.safe)
            (hsPkgs.deepseq)
            (hsPkgs.semigroups)
            (hsPkgs.cmdargs)
            (hsPkgs.czipwith)
            (hsPkgs.ghc-boot-th)
            (hsPkgs.hspec)
            (hsPkgs.filepath)
            (hsPkgs.parsec)
          ];
        };
        "libinterfacetests" = {
          depends  = [
            (hsPkgs.brittany)
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }