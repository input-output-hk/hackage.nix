{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      buildexamples = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Feval";
          version = "1.0.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "anthonyburz@gmail.com";
        author = "Anthony Burzillo";
        homepage = "http://github.com/burz/Feval";
        url = "";
        synopsis = "Evaluation using F-Algebras";
        description = "Feval is a statically typed functional programming language that\nuses f-algebras as opposed to classic recursion to solve the problem\nof evaluation and typechecking, which allows the compiler to perform\nbetter optimizations.";
        buildType = "Simple";
      };
      components = {
        exes = {
          Feval = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
          examples = {
            depends  = pkgs.lib.optionals _flags.buildexamples [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.containers
              hsPkgs.mtl
            ];
          };
        };
      };
    }