{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Hsmtlib";
          version = "0.2.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "numicola@gmail.com and rogeriop062@gmail.com";
        author = "Nuno Laranjo and Rogerio Pontes";
        homepage = "https://github.com/MfesGA/Hsmtlib";
        url = "";
        synopsis = "Haskell library for easy interaction with SMT-LIB 2 compliant solvers.";
        description = "Hsmtl provides functions to interact with several smt solvers using SMT-LIB 2.\nThe current suported solvers are Cvc4, MathSat, Z3.\nAdditional solvers can be used if they are SMT-LIB 2 compliant.\nMore information and tutorials can be found in <https://github.com/MfesGA/Hsmtlib>";
        buildType = "Simple";
      };
      components = {
        Hsmtlib = {
          depends  = [
            hsPkgs.base
            hsPkgs.smtLib
            hsPkgs.containers
            hsPkgs.pretty
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.parsec
          ];
        };
      };
    }