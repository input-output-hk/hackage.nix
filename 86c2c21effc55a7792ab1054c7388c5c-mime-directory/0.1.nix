{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.0";
        identifier = {
          name = "mime-directory";
          version = "0.1";
        };
        license = "LicenseRef-LGPL";
        copyright = "(c) 2008. Mathieu Boespflug <mboes@tweag.net>";
        maintainer = "Mathieu Boespflug <mboes@tweag.net>";
        author = "Mathieu Boespflug";
        homepage = "http://code.haskell.org/~mboes/mime-directory.git";
        url = "";
        synopsis = "A library for parsing/printing the text/directory mime type.";
        description = "A library for parsing\\/printing the text\\/directory mime type.";
        buildType = "Simple";
      };
      components = {
        "mime-directory" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.regex-pcre
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
      };
    }