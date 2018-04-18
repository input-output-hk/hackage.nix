{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uuid-crypto";
          version = "1.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Gregor Kleen <aethoago@141.li>";
        author = "Gregor Kleen <aethoago@141.li>";
        homepage = "";
        url = "";
        synopsis = "Reversable and secure encoding of object ids as uuids";
        description = "";
        buildType = "Simple";
      };
      components = {
        uuid-crypto = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.cryptoids
            hsPkgs.cryptoids-class
            hsPkgs.cryptoids-types
            hsPkgs.exceptions
            hsPkgs.uuid
          ];
        };
      };
    }