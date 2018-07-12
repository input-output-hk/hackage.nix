{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "sexp-show";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Produce a s-expression representation of Show values.";
        description = "Program to produce a s-expression representation of Show values.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "sexp-show" = {
            depends  = [
              hsPkgs.base
              hsPkgs.pretty-show
            ];
          };
        };
      };
    }