{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "primula-board";
          version = "0.0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "newanon@yandex.ru";
        author = "Kagami <newanon@yandex.ru>";
        homepage = "http://kagami.touhou.ru/projects/show/primula";
        url = "";
        synopsis = "ImageBoard on Happstack and HSP";
        description = "Simple ImageBoard like wakaba on Happstack and HSP.\nMessages on board sended via jabber-bot\n(primula-bot package). Settings stored in\n~/.primularc file.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "primula-board" = {
            depends  = [
              hsPkgs.base
              hsPkgs.happstack-helpers
              hsPkgs.happstack-server
              hsPkgs.containers
              hsPkgs.mtl
              hsPkgs.split
              hsPkgs.happstack
              hsPkgs.hsp
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.old-time
              hsPkgs.random
              hsPkgs.directory
              hsPkgs.ConfigFile
              hsPkgs.regex-posix
              hsPkgs.MissingH
              hsPkgs.happstack-state
            ];
          };
        };
      };
    }