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
      specVersion = "1.6";
      identifier = {
        name = "pontarius-xmpp";
        version = "0.2.0.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
      maintainer = "info@jonkri.com";
      author = "Jon Kristensen, Mahdi Abdinejadi, Philipp Balzarek";
      homepage = "https://github.com/jonkri/pontarius-xmpp/";
      url = "http://www.jonkri.com/releases/pontarius-xmpp-0.2.0.0.tar.gz";
      synopsis = "An incomplete implementation of RFC 6120 (XMPP: Core)";
      description = "Pontarius XMPP is a work in progress implementation of\nRFC 6120 (XMPP: Core).";
      buildType = "Simple";
    };
    components = {
      "pontarius-xmpp" = {
        depends  = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-random-api)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default)
          (hsPkgs.dns)
          (hsPkgs.hslogger)
          (hsPkgs.iproute)
          (hsPkgs.lifted-base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.pureMD5)
          (hsPkgs.resourcet)
          (hsPkgs.random)
          (hsPkgs.split)
          (hsPkgs.stm)
          (hsPkgs.stringprep)
          (hsPkgs.text)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.transformers)
          (hsPkgs.void)
          (hsPkgs.xml-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-picklers)
        ];
      };
    };
  }