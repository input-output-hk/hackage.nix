{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "wsedit";
          version = "0.1.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2012 Linus Lüssing";
        maintainer = "Linus Lüssing <linus.luessing@web.de>";
        author = "Linus Lüssing";
        homepage = "";
        url = "";
        synopsis = "A small tool to list, add and remove webseeds from a torrent file";
        description = "This package provides a program to modify BEP-19 webseeds (GetRight style) of\na torrent file.\n\nCurrently it allows to:\n\n* list all webseeds (@--list-webseeds@)\n\n* append a webseed (@--add-webseed \\<url\\>@)\n\n* remove a webseed (@--remove-webseed \\<n\\>@)\n\n* remove all webseeds (@--remove-all-webseeds@)\n\nAlso see:\n\n@wsedit --help@";
        buildType = "Simple";
      };
      components = {
        exes = {
          wsedit = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.containers
              hsPkgs.bencode
              hsPkgs.safe
              hsPkgs.bytestring
              hsPkgs.utf8-string
            ];
          };
        };
      };
    }