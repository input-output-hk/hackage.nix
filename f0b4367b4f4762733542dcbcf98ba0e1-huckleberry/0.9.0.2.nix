{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "huckleberry";
          version = "0.9.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "tkms@mitsuji.org";
        author = "Takamasa Mitsuji";
        homepage = "";
        url = "";
        synopsis = "IchigoJam BASIC expressed in Haskell.";
        description = "The EDSL Provides bridge between IchigoJam BASIC and Haskell.";
        buildType = "Simple";
      };
      components = {
        huckleberry = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.serialport
          ];
        };
        tests = {
          huckleberry-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.huckleberry
              hsPkgs.HUnit
            ];
          };
        };
      };
    }