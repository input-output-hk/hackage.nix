{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-modbus";
          version = "0.3.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jhickner@gmail.com";
        author = "Jason Hickner";
        homepage = "http://www.github.com/jhickner/haskell-modbus";
        url = "";
        synopsis = "A cereal-based parser for the Modbus protocol";
        description = "A cereal-based parser for the Modbus protocol";
        buildType = "Simple";
      };
      components = {
        haskell-modbus = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.cereal
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.hspec
              hsPkgs.haskell-modbus
              hsPkgs.cereal
              hsPkgs.bytestring
              hsPkgs.array
            ];
          };
        };
      };
    }