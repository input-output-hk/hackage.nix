{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "network-protocol-xmpp";
          version = "0.2.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jmillikin@gmail.com";
        author = "John Millikin <jmillikin@gmail.com>\nStephan Maka  <stephan@spaceboyz.net>";
        homepage = "";
        url = "";
        synopsis = "Client <-> Server communication over XMPP";
        description = "";
        buildType = "Simple";
      };
      components = {
        network-protocol-xmpp = {
          depends  = [
            hsPkgs.base
            hsPkgs.hxt
            hsPkgs.libxml-sax
            hsPkgs.hsgnutls
            hsPkgs.gsasl
            hsPkgs.network
            hsPkgs.bytestring
            hsPkgs.SHA
          ];
        };
      };
    }