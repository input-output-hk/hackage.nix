{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "uvector-algorithms";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Dan Doel <dan.doel@gmail.com>";
        author = "Dan Doel";
        homepage = "http://code.haskell.org/~dolio/";
        url = "";
        synopsis = "Efficient algorithms for uvector unboxed arrays";
        description = "Efficient algorithms for uvector unboxed arrays\nbe sure to compile with -O2, and -fvia-C -optc-O3 is\nrecommended.";
        buildType = "Simple";
      };
      components = {
        uvector-algorithms = {
          depends  = [
            hsPkgs.base
            hsPkgs.uvector
          ];
        };
      };
    }