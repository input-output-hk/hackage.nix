{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.22";
        identifier = {
          name = "si-clock";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Marc.Fontaine@gmx.de";
        author = "Marc.Fontaine@gmx.de";
        homepage = "";
        url = "";
        synopsis = "An interface to the Silicon Labs Si5351 clock chip";
        description = "An experimental interface to the Silicon Labs\nI2C-programmable any-frequency CMOS clock generator and VCXO.\n(tested with the Si5351 cip).";
        buildType = "Simple";
      };
      components = {
        "si-clock" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.hsI2C
          ];
        };
      };
    }