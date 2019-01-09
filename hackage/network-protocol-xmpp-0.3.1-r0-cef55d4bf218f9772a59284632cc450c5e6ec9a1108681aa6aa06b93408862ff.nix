{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-protocol-xmpp"; version = "0.3.1"; };
      license = "GPL-3.0-only";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.gnuidn)
          (hsPkgs.gnutls)
          (hsPkgs.bytestring)
          (hsPkgs.libxml-sax)
          (hsPkgs.gsasl)
          (hsPkgs.network)
          (hsPkgs.transformers)
          (hsPkgs.monads-tf)
          (hsPkgs.xml-types)
          (hsPkgs.failable-list)
          ];
        };
      };
    }