{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ewe";
          version = "0.1.0.12";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fcardona@eafit.edu.co";
        author = "Juan Francisco Cardona McCormick";
        homepage = "http://github.com/jfcmacro/ewe";
        url = "";
        synopsis = "An language to teach a programming";
        description = "Another implementions of the EWE programming language originally developed by Kent D. Lee. EWE was an extension of the RAM programming language created by Sethi.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ewe = {
            depends  = [
              hsPkgs.base
              hsPkgs.parsec
              hsPkgs.transformers
              hsPkgs.mtl
            ];
          };
        };
      };
    }