{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "XMPP";
        version = "0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "newanon@yandex.ru";
      author = "Magnus Henoch, Kagami <newanon@yandex.ru>";
      homepage = "http://www.dtek.chalmers.se/~henoch/text/hsxmpp.html";
      url = "";
      synopsis = "XMPP library";
      description = "XMPP library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.random)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.mtl)
        ];
      };
    };
  }