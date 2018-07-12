{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "notmuch-haskell";
          version = "1.0.0.3";
        };
        license = "LicenseRef-LGPL";
        copyright = "© 2010 Bart Massey";
        maintainer = "Bart Massey <bart@cs.pdx.edu>";
        author = "Bart Massey <bart@cs.pdx.edu>";
        homepage = "";
        url = "";
        synopsis = "Binding for notmuch MUA library";
        description = "This is a half-assed higher-level Haskell binding\nfor the Notmuch (notmuchmail.org) email indexing library.";
        buildType = "Simple";
      };
      components = {
        "notmuch-haskell" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.filepath
          ];
          libs = [ pkgs.notmuch ];
        };
        exes = {
          "notmuch-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.old-locale
              hsPkgs.parseargs
            ];
            libs = [ pkgs.notmuch ];
          };
        };
      };
    }