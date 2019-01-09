{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "network-protocol-xmpp"; version = "0.4.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "John Millikin <jmillikin@gmail.com>";
      author = "John Millikin <jmillikin@gmail.com>, Stephan Maka <stephan@spaceboyz.net>";
      homepage = "https://john-millikin.com/software/haskell-xmpp/";
      url = "";
      synopsis = "Client library for the XMPP protocol.";
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