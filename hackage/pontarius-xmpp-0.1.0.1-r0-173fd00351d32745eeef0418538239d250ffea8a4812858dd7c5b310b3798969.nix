{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pontarius-xmpp"; version = "0.1.0.1"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
      maintainer = "info@jonkri.com";
      author = "Jon Kristensen, Mahdi Abdinejadi, Philipp Balzarek";
      homepage = "http://www.pontarius.org/";
      url = "http://hackage.haskell.org/packages/archive/pontarius-xmpp/0.1.0.0/pontarius-xmpp-0.1.0.0.tar.gz";
      synopsis = "An incomplete implementation of RFC 6120 (XMPP: Core)";
      description = "Pontarius is a work in progress implementation of\nRFC 6120 (XMPP: Core).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.conduit)
          (hsPkgs.void)
          (hsPkgs.resourcet)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.pureMD5)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.attoparsec)
          (hsPkgs.crypto-api)
          (hsPkgs.cryptohash)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.lifted-base)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.xml-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-picklers)
          (hsPkgs.data-default)
          (hsPkgs.stringprep)
          ];
        };
      exes = { "pontarius-xmpp-echoclient" = {}; };
      };
    }