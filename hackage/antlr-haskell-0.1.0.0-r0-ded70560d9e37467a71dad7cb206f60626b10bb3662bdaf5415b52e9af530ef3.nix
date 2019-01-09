{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "antlr-haskell"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "MIT";
      maintainer = "karl@cs.tufts.edu";
      author = "Karl Cronburg & Matthew Ahrens";
      homepage = "https://github.com/cronburg/antlr-haskell#readme";
      url = "";
      synopsis = "A Haskell implementation of the ANTLR top-down parser generator";
      description = "Please see the README on Github at <https://github.com/cronburg/antlr-haskell#readme> and <https://www.cronburg.com/2018/antlr-haskell-project/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.hashable)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.mtl)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.th-lift)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      tests = {
        "allstar" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "atn" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "chisel" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "coreg4" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "g4" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "lexer" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "ll" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "lr" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "sexpression" = {
          depends = [
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "simple" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        "template" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.antlr-haskell)
            (hsPkgs.base)
            (hsPkgs.call-stack)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.hashable)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.mtl)
            (hsPkgs.template-haskell)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.th-lift)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }