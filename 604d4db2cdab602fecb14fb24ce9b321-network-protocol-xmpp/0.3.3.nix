{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-protocol-xmpp";
          version = "0.3.3";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>\nStephan Maka  <stephan@spaceboyz.net>";
        homepage = "https://john-millikin.com/software/hs-xmpp/";
        url = "";
        synopsis = "Client->Server XMPP";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-protocol-xmpp = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.gnuidn
            hsPkgs.gnutls
            hsPkgs.bytestring
            hsPkgs.gsasl
            hsPkgs.network
            hsPkgs.transformers
            hsPkgs.monads-tf
            hsPkgs.libxml-sax
            hsPkgs.xml-types
          ];
        };
      };
    }