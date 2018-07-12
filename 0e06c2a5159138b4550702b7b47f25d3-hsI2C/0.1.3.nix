{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hsI2C";
          version = "0.1.3";
        };
        license = "BSD-3-Clause";
        copyright = "Marc Fontaine";
        maintainer = "Marc.Fontaine@gmx.de";
        author = "Marc Fontaine";
        homepage = "";
        url = "";
        synopsis = "I2C access for Haskell and Linux";
        description = "I2C access for Haskell and Linux";
        buildType = "Simple";
      };
      components = {
        "hsI2C" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix
          ];
        };
      };
    }