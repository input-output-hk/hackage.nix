{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { test = true; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "Paraiso";
        version = "0.3.1.5";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "http://www.paraiso-lang.org/wiki/index.php/Main_Page";
      url = "";
      synopsis = "a code generator for partial differential equations solvers.";
      description = "The purpose of this project is to design a high-level language\nfor implementing explicit partial-differential equations solvers\non supercomputers as well as today’s advanced personal\ncomputers.\nA language to describe the knowledge on algebraic concepts,\nphysical equations, integration algorithms, optimization\ntechniques, and hardware designs --- all the necessaries of the\nsimulations in abstract, modular, re-usable and combinable forms.\n\n> How to use\n\nThe module \"Language.Paraiso.OM.Builder\" contains the\n@Builder@ monad, its typeclass instance declarations and\nfunctions that can be used to build Paraiso\nprograms. Reserved words are @load@, @store@, @imm@,\n@loadIndex@, @loadSize@, @shift@, @reduce@ and\n@broadcast@.\n\nParaiso frontend uses \"Data.Tensor.Typelevel\"\n<http://hackage.haskell.org/package/typelevel-tensor>,\nthe library for tensor calculus of\narbitrary rank and dimension. @Vector@ and @Axis@ are two main\nconcepts. The type @Vector@ represents rank-1 tensor, and tensors\nof higher ranks are recursively defined as @Vector@ of\n@Vector@s. With @Axis@ you can refer to the components of\n@Vector@s, compose them, or contract them. See the wiki\n<http://www.paraiso-lang.org/wiki/> and the paper\n<http://arxiv.org/abs/1204.4779> for more detail. Examples\nare in <https://github.com/nushio3/Paraiso/tree/master/examples>.\n\n* 0.3.1.5 : Catch up to stack lts-3.16/ghc 7.10.2, thanks to Justus Sagemüller's patch!\n\n* 0.3.0.0 /Doughnut/ : refined interface and support for cyclic boundary conditions.\n\n* 0.2.0.0 /Companion/ : genetic algorithm support for automated tuning.\n\n* 0.1.0.0 /Binary/ : enhanced backend, code generator for OpenMP and CUDA\n\n* 0.0.0.0 /Atmosphere/ : code generator for single CPU";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.failure)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.typelevel-tensor)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "runtests" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.fgl)
            (hsPkgs.mtl)
            (hsPkgs.numeric-prelude)
            (hsPkgs.process)
            (hsPkgs.repa)
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