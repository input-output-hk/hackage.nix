{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "Paraiso";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "http://www.paraiso-lang.org/wiki/index.php/Main_Page";
      url = "";
      synopsis = "a code generator for partial differential equations solvers.";
      description = "The purpose of this project is to design a high-level language\nfor implementing explicit partial-differential equations solvers\non supercomputers as well as today’s advanced personal\ncomputers.\nA language to describe the knowledge on algebraic concepts,\nphysical equations, integration algorithms, optimization\ntechniques, and hardware designs --- all the necessaries of the\nsimulations in abstract, modular, re-usable and combinable forms.\n\n> How to use\n\nThe module \"Language.Paraiso.OM.Builder\" contains the @Builder@\nmonad, its typeclass instance declarations and functions that can\nbe used to build Paraiso programs. Reserved words are @load@,\n@store@, @imm@, @loadIndex@, @shift@, @reduce@ and @broadcast@.\n\n\"Language.Paraiso.Tensor\" is the library for tensor calculus of\narbitrary rank and dimension. @Vector@ and @Axis@ are two main\nconcepts. The type @Vector@ represents rank-1 tensor, and tensors\nof higher ranks are recursively defined as @Vector@ of\n@Vector@s. With @Axis@ you can refer to the components of\n@Vector@s, compose them, or contract them. Standalone usecases of\n@Tensor@ library and other components of Paraiso are found in:\n<https://github.com/nushio3/Paraiso/tree/master/attic>\n\n* A document describing the current and the future designs :\n<https://github.com/nushio3/Paraiso/blob/master/paper/om.pdf>\n\n* Sample programs written in Paraiso :\n<https://github.com/nushio3/Paraiso/tree/master/examples>\n\n* The codes generated from the samples :\n<https://github.com/nushio3/Paraiso/tree/exampled/examples>\n\n* The wiki :\n<http://www.paraiso-lang.org/wiki/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.control-monad-failure)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fgl)
          (hsPkgs.mtl)
          (hsPkgs.numeric-prelude)
          (hsPkgs.repa)
        ];
      };
    };
  }