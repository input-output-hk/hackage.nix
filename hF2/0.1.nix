{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hF2";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Marcel Fourné, 2011-2012";
        maintainer = "Marcel Fourné (hF2@bitrot.dyndns.org)";
        author = "Marcel Fourné";
        homepage = "";
        url = "";
        synopsis = "F(2^e) math for cryptography";
        description = "A timing attack resistant F(2^e) backend, all operations on little-endian data in unboxed bit vectors";
        buildType = "Simple";
      };
      components = {
        hF2 = {
          depends  = [
            hsPkgs.base
            hsPkgs.bitvec
            hsPkgs.vector
          ];
        };
      };
    }