{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pcf";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jozefg@cmu.edu";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A one file compiler for PCF";
      description = "PCF is a small programming language with higher order\nfunctions, natural numbers, and recursion. It is\nstatically tpyed and turing complete (general\nrecursion and all that). This compiler transformers\na PCF expression into a file of C code that when run\noutputs the answer.\nIt is mostly intended as a\ndemonstration of how to write such a compiler. The\ncurious reader should look at the <http://jozefg.bitbucket.org/posts/2015-03-24-pcf.html writeup>.";
      buildType = "Simple";
    };
    components = {
      "pcf" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bound)
          (hsPkgs.c-dsl)
          (hsPkgs.containers)
          (hsPkgs.monad-gen)
          (hsPkgs.mtl)
          (hsPkgs.prelude-extras)
          (hsPkgs.transformers)
          (hsPkgs.void)
        ];
      };
    };
  }