{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "crc16-table";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Compute CRC16 checksums using a lookup table.";
        description = "Compute a CRC16 checksum of some bytes using a lookup table.\n\nThis table matches the particular CRC flavor used by Crystalfontz LCDs.  If\nyou can extend this code to suit another application, or have any other improvements,\nplease send me suggestions or patches.";
        buildType = "Simple";
      };
      components = {
        crc16-table = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
          ];
        };
      };
    }