{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "ewe";
          version = "0.1.0.46";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fcardona@eafit.edu.co";
        author = "Juan Francisco Cardona McCormick";
        homepage = "http://github.com/jfcmacro/ewe";
        url = "";
        synopsis = "A language for teaching simple programming languages";
        description = "Another implemention of the EWE programming language originally created and designed by Kent D. Lee. EWE is an extension of the RAM programming language (Ravin Sethi).";
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