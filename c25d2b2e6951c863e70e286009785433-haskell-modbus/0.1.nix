{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-modbus";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://www.github.com/jhickner/haskell-modbus";
        url = "";
        synopsis = "A haskell implementation of the Modbus protocol";
        description = "A haskell implementation of the Modbus protocol";
        buildType = "Simple";
      };
      components = {
        haskell-modbus = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.network
            hsPkgs.attoparsec
            hsPkgs.array
          ];
        };
      };
    }