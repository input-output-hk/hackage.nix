{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "limp";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "amos.robinson@gmail.com";
        author = "Amos Robinson";
        homepage = "https://github.com/amosr/limp";
        url = "";
        synopsis = "representation of Integer Linear Programs";
        description = "so far, this package just provides two representations for linear programs: Numeric.Limp.Program, which is what I expect end-users to use, and\nNumeric.Limp.Canon, which is simpler, but would be less nice for writing linear programs.\nsee the limp-cbc package for a simple solver.";
        buildType = "Simple";
      };
      components = {
        "limp" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.vector
            hsPkgs.void
            hsPkgs.template-haskell
          ];
        };
      };
    }