{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      large_base = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "dataenc";
          version = "0.11";
        };
        license = "LicenseRef-LGPL";
        copyright = "Magnus Therning, 2007";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "";
        url = "";
        synopsis = "Data encoding library";
        description = "Data encoding library currently providing Uuencode, Base64,\nBase64Url, Base32, Base32Hex, Base16, and Base85.";
        buildType = "Simple";
      };
      components = {
        dataenc = {
          depends  = if _flags.large_base
            then [ hsPkgs.base ]
            else [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.containers
            ];
        };
      };
    }