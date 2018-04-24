{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ewe";
          version = "0.1.0.43";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fcardona@eafit.edu.co";
        author = "Juan Francisco Cardona McCormick";
        homepage = "http://github.com/jfcmacro/ewe";
        url = "";
        synopsis = "An language using in Programming Languages teaching";
        description = "Another implemention of the EWE programming language originally created and developed by Kent D. Lee. EWE is an extension of the RAM programming language. RAM was created by Sethi.";
        buildType = "Simple";
      };
      components = {
        exes = {
          ewe = {
            depends  = [
              hsPkgs.base
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.pretty
            ];
            build-tools = [
              hsPkgs.alex
              hsPkgs.happy
            ];
          };
        };
      };
    }