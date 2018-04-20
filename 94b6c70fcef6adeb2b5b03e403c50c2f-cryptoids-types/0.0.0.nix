{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cryptoids-types";
          version = "0.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "aethoago@141.li";
        author = "Gregor Kleen";
        homepage = "";
        url = "";
        synopsis = "Shared types for encrypting internal object identifiers before exposure";
        description = "";
        buildType = "Simple";
      };
      components = {
        cryptoids-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.path-pieces
            hsPkgs.http-api-data
          ];
        };
      };
    }