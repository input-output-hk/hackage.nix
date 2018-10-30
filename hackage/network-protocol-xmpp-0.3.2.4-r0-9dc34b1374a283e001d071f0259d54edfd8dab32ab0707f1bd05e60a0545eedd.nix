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
        name = "network-protocol-xmpp";
        version = "0.3.2.4";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "jmillikin@gmail.com";
      author = "John Millikin <jmillikin@gmail.com>\nStephan Maka  <stephan@spaceboyz.net>";
      homepage = "http://john-millikin.com/software/network-protocol-xmpp/";
      url = "";
      synopsis = "Client->Server XMPP";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.gnuidn)
          (hsPkgs.gnutls)
          (hsPkgs.bytestring)
          (hsPkgs.gsasl)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.libxml-sax)
          (hsPkgs.xml-types)
        ];
      };
    };
  }