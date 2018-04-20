{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-syntactic = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "imperative-edsl";
          version = "0.4.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2015 Anders Persson, Emil Axelsson, Markus Aronsson";
        maintainer = "emax@chalmers.se";
        author = "Anders Persson, Emil Axelsson, Markus Aronsson";
        homepage = "https://github.com/emilaxelsson/imperative-edsl";
        url = "";
        synopsis = "Deep embedding of imperative programs with code generation";
        description = "Deep embedding of imperative programs with code generation.\n\nThe main module for users who want to write imperative\nprograms is \"Language.Embedded.Imperative\" (and optionally\n\"Language.Embedded.Expr\" which provides a simple expression\nlanguage).\n\nExamples can be found in the @examples@ directory.";
        buildType = "Simple";
      };
      components = {
        imperative-edsl = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.constraints
            hsPkgs.containers
            hsPkgs.exception-transformers
            hsPkgs.language-c-quote
            hsPkgs.mainland-pretty
            hsPkgs.microlens
            hsPkgs.microlens-mtl
            hsPkgs.microlens-th
            hsPkgs.mtl
            hsPkgs.operational-alacarte
            hsPkgs.tagged
            hsPkgs.BoundedChan
            hsPkgs.srcloc
          ] ++ (if _flags.old-syntactic
            then [ hsPkgs.syntactic ]
            else [
              hsPkgs.open-typerep
              hsPkgs.syntactic
            ]);
        };
        tests = {
          Examples = {
            depends  = [
              hsPkgs.base
              hsPkgs.imperative-edsl
              hsPkgs.mainland-pretty
              hsPkgs.directory
              hsPkgs.process
            ];
          };
          Semantics = {
            depends  = [
              hsPkgs.base
              hsPkgs.imperative-edsl
            ];
          };
        };
      };
    }