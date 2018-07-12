{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "Ranka";
          version = "0.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "newanon@yandex.ru";
        author = "Kagami <newanon@yandex.ru>";
        homepage = "http://kagami.touhou.ru/projects/show/ranka";
        url = "";
        synopsis = "HTTP to XMPP omegle chats gate.";
        description = "HTTP to XMPP omegle chats gate. Simple example of\nNetwork.XMPP library usage.";
        buildType = "Simple";
      };
      components = {
        exes = {
          "Ranka" = {
            depends  = [
              hsPkgs.base
              hsPkgs.XMPP
              hsPkgs.network
              hsPkgs.utf8-string
              hsPkgs.json
              hsPkgs.HTTP
            ];
          };
        };
      };
    }