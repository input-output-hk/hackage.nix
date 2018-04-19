{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "dataenc";
          version = "0.10.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Magnus Therning, 2007";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "";
        url = "";
        synopsis = "Data encoding library currently providing Uuencode, Base64,\nBase64Url, Base32, Base32Hex, and Base16.";
        description = "";
        buildType = "Custom";
      };
      components = {
        dataenc = {
          depends  = [ hsPkgs.base ];
        };
      };
    }