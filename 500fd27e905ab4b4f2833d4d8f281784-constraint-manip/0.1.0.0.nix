{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "constraint-manip";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "Clinton Mead (2017)";
        maintainer = "clintonmead@gmail.com";
        author = "Clinton Mead";
        homepage = "";
        url = "";
        synopsis = "Some conviencience type functions for manipulating constraints.";
        description = "This package contains some useful classes for creating and combining constraints of one variable.\nThe documentation of module has more detail.";
        buildType = "Simple";
      };
      components = {
        constraint-manip = {
          depends  = [
            hsPkgs.base
            hsPkgs.indextype
          ];
        };
      };
    }