{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      large_base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "dataenc";
          version = "0.11.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "Magnus Therning, 2007";
        maintainer = "magnus@therning.org";
        author = "Magnus Therning";
        homepage = "http://www.haskell.org/haskellwiki/Library/Data_encoding";
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