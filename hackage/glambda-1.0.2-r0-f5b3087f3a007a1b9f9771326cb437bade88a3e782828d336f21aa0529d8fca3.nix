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
        name = "glambda";
        version = "1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Richard Eisenberg <rae@cs.brynmawr.edu>";
      author = "Richard Eisenberg <rae@cs.brynmawr.edu>";
      homepage = "https://github.com/goldfirere/glambda";
      url = "";
      synopsis = "A simply typed lambda calculus interpreter, written with GADTs";
      description = "This is an interpreter for the simply-typed lambda calculus. It is\nwritten making heavy use of generalized algebraic datatypes (GADTs), and is\nmeant to serve as an example how how these GADTs can be useful. See\nthe GitHub repo for more information about the syntax for the language\nand interpreter commands.";
      buildType = "Simple";
    };
    components = {
      "glambda" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.haskeline)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "glam" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.glambda)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.glambda)
            (hsPkgs.template-haskell)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.parsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }