{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "matsuri";
        version = "0.0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Kagami <newanon@yandex.ru>,\nGrigory Holomiev <omever@gmail.com>,\nMaxim Taldykin <jorpic@gmail.com>";
      homepage = "http://kagami.touhou.ru/projects/show/matsuri";
      url = "";
      synopsis = "";
      description = "ncurses XMPP client. Read README file before use.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "matsuri" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vty)
            (hsPkgs.vty-ui)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.split)
            (hsPkgs.directory)
            (hsPkgs.ConfigFile)
            (hsPkgs.XMPP)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
      };
    };
  }