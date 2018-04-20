{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "atom-msp430";
          version = "0.5.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "dan.buckmaster@gmail.com";
        author = "Daniel Buckmaster";
        homepage = "https://github.com/eightyeight/atom-msp430";
        url = "";
        synopsis = "Convenience functions for using Atom with the MSP430 microcontroller family.";
        description = "";
        buildType = "Simple";
      };
      components = {
        atom-msp430 = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.atom
          ];
        };
      };
    }