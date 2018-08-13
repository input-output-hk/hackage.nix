{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "primula-bot";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>";
      homepage = "http://kagami.touhou.ru/projects/show/primula";
      url = "";
      synopsis = "Jabber-bot for primula-board ImageBoard";
      description = "Jabber-bot for communication with primula-board.\nSettings stored in ~/.primularc file.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "primula-bot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.XMPP)
            (hsPkgs.network)
            (hsPkgs.utf8-string)
            (hsPkgs.HTTP)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.ConfigFile)
          ];
        };
      };
    };
  }