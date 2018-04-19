{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0";
        identifier = {
          name = "vcard";
          version = "0.1.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) 2008. Mathieu Boespflug <mboes - at - tweag.net>";
        maintainer = "Mathieu Boespflug <mboes - at - tweag.net>";
        author = "Mathieu Boespflug";
        homepage = "http://github.com/mboes/vCard";
        url = "";
        synopsis = "A library for parsing/printing vCards from/to various formats.";
        description = "A library for parsing\\/printing vCards from\\/to various formats.\nCurrently only vCard 3.0 defined in RFC 2426 is supported.";
        buildType = "Simple";
      };
      components = {
        vcard = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.mime-directory
          ];
        };
      };
    }