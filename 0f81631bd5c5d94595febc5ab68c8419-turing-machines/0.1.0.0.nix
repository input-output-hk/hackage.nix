{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "turing-machines";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "riazavalverde@gmail.com";
        author = "José Antonio Riaza Valverde";
        homepage = "https://github.com/jariazavalverde/hackage-turing-machines";
        url = "";
        synopsis = "A simple simulator for Turing machines";
        description = "";
        buildType = "Simple";
      };
      components = {
        turing-machines = {
          depends  = [ hsPkgs.base ];
        };
      };
    }