{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      old-syntactic = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "imperative-edsl";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015-2016, Anders Persson, Emil Axelsson, Markus Aronsson";
      maintainer = "emax@chalmers.se";
      author = "Anders Persson, Emil Axelsson, Markus Aronsson";
      homepage = "https://github.com/emilaxelsson/imperative-edsl";
      url = "";
      synopsis = "Deep embedding of imperative programs with code generation";
      description = "Deep embedding of imperative programs with code generation.\n\nThe main module for users who want to write imperative\nprograms is \"Language.Embedded.Imperative\" (and optionally\n\"Language.Embedded.CExp\" which provides a simple expression\nlanguage).\n\nExamples can be found in the @examples@ directory.";
      buildType = "Simple";
    };
    components = {
      "imperative-edsl" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exception-transformers)
          (hsPkgs.ghc-prim)
          (hsPkgs.language-c-quote)
          (hsPkgs.mainland-pretty)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.microlens-th)
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.operational-alacarte)
          (hsPkgs.BoundedChan)
          (hsPkgs.srcloc)
          (hsPkgs.time)
        ] ++ (if flags.old-syntactic
          then [ (hsPkgs.syntactic) ]
          else [
            (hsPkgs.open-typerep)
            (hsPkgs.syntactic)
          ]);
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.imperative-edsl)
            (hsPkgs.syntactic)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
      };
    };
  }