{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Paraiso";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "http://www.paraiso-lang.org/wiki/index.php/Main_Page";
      url = "";
      synopsis = "a code generator for partial differential equations solvers.";
      description = "The purpose of this project is to design a high-level language\nfor implementing explicit partial-differential equations solvers\non supercomputers as well as today’s advanced personal\ncomputers.\nA language to describe the knowledge on algebraic concepts,\nphysical equations, integration algorithms, optimization\ntechniques, and hardware designs --- all the necessaries of the\nsimulations in abstract, modular, re-usable and combinable forms.\n\n> How to use\n\nThe module \"Language.Paraiso.OM.Builder\" contains the\n@Builder@ monad, its typeclass instance declarations and\nfunctions that can be used to build Paraiso\nprograms. Reserved words are @load@, @store@, @imm@,\n@loadIndex@, @loadSize@, @shift@, @reduce@ and\n@broadcast@.\n\nParaiso frontend uses \"Data.Tensor.Typelevel\"\n<http://hackage.haskell.org/package/typelevel-tensor>,\nthe library for tensor calculus of\narbitrary rank and dimension. @Vector@ and @Axis@ are two main\nconcepts. The type @Vector@ represents rank-1 tensor, and tensors\nof higher ranks are recursively defined as @Vector@ of\n@Vector@s. With @Axis@ you can refer to the components of\n@Vector@s, compose them, or contract them. See the wiki for more detail:\n<http://www.paraiso-lang.org/wiki/>\n\n* 0.1.0.0 /Binary/ : enhanced backend, code generator for OpenMP and CUDA\n\n* 0.0.0.0 /Atmosphere/ : code generator for single CPU";
      buildType = "Simple";
    };
    components = {
      "Paraiso" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.control-monad-failure)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.ListLike)
          (hsPkgs.listlike-instances)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.typelevel-tensor)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.control-monad-failure)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fgl)
            (hsPkgs.ListLike)
            (hsPkgs.listlike-instances)
            (hsPkgs.mtl)
            (hsPkgs.numeric-prelude)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.typelevel-tensor)
            (hsPkgs.vector)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }