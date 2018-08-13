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
        name = "mahoro";
        version = "0.1.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>";
      homepage = "http://kagami.touhou.ru/projects/show/mahoro";
      url = "";
      synopsis = "chans to XMPP gate";
      description = "Chans (ImageBoards) to XMPP gate. Supports Wakaba,\nKusaba and other engines.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mahoro" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.XMPP)
            (hsPkgs.network)
            (hsPkgs.old-time)
            (hsPkgs.happstack-state)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.MissingH)
            (hsPkgs.tagsoup)
            (hsPkgs.utf8-string)
            (hsPkgs.directory)
            (hsPkgs.ConfigFile)
            (hsPkgs.curl)
          ];
        };
      };
    };
  }