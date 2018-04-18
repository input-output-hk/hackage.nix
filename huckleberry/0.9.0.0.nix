{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "huckleberry";
          version = "0.9.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tkms@mitsuji.org";
        author = "Takamasa Mitsuji";
        homepage = "";
        url = "";
        synopsis = "haskell EDSL Huckleberry";
        description = "IchigoJam BASIC on haskell";
        buildType = "Simple";
      };
      components = {
        huckleberry = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.serialport
            hsPkgs.mtl
          ];
        };
      };
    }