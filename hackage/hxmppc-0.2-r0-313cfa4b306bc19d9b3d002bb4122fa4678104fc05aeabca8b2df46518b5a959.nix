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
      specVersion = "1.6";
      identifier = {
        name = "hxmppc";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nicolas.pouillard@gmail.com";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "Haskell XMPP (Jabber Client) Command Line Interface (CLI)";
      description = "A simple command line interface to send and receive\nmessages via XMPP";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hxmppc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.xml-types)
            (hsPkgs.transformers)
            (hsPkgs.network)
            (hsPkgs.network-protocol-xmpp)
            (hsPkgs.fclabels)
          ];
        };
      };
    };
  }