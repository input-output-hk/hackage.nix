{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "XMPP";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "newanon@yandex.ru";
        author = "Magnus Henoch,\nKagami <newanon@yandex.ru>,\nGrigory Holomiev <omever@gmail.com>";
        homepage = "http://kagami.touhou.ru/projects/show/matsuri";
        url = "";
        synopsis = "XMPP library";
        description = "XMPP library";
        buildType = "Simple";
      };
      components = {
        "XMPP" = {
          depends  = [
            hsPkgs.base
            hsPkgs.haskell98
            hsPkgs.random
            hsPkgs.utf8-string
            hsPkgs.network
            hsPkgs.parsec
            hsPkgs.mtl
            hsPkgs.hsdns
          ];
        };
      };
    }