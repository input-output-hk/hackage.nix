{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simple-smt";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "iavor.diatchki@gmail.com";
        author = "Iavor S. Diatchki";
        homepage = "";
        url = "";
        synopsis = "A simple way to interact with an SMT solver process.";
        description = "A simple way to interact with an SMT solver process.";
        buildType = "Simple";
      };
      components = {
        simple-smt = {
          depends  = [
            hsPkgs.base
            hsPkgs.process
          ];
        };
      };
    }