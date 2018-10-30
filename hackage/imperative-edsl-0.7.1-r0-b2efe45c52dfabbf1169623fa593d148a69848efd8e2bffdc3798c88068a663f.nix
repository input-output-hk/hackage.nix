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
      specVersion = "1.10";
      identifier = {
        name = "imperative-edsl";
        version = "0.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Anton Ekblad, Emil Axelsson, Máté Karácsony\nCopyright (c) 2015 Anders Persson, Anton Ekblad, Emil Axelsson,\nMarkus Aronsson, Josef Svenningsson";
      maintainer = "78emil@gmail.com";
      author = "Anders Persson, Emil Axelsson, Markus Aronsson";
      homepage = "https://github.com/emilaxelsson/imperative-edsl";
      url = "";
      synopsis = "Deep embedding of imperative programs with code generation";
      description = "Deep embedding of imperative programs with code generation.\n\nThe main module for users who want to write imperative\nprograms is \"Language.Embedded.Imperative\".\n\nExamples can be found in the @examples@ directory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.data-default-class)
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
          (hsPkgs.syntactic)
          (hsPkgs.time)
          (hsPkgs.stm)
        ];
      };
      tests = {
        "Tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.imperative-edsl)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.syntactic)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
      };
    };
  }