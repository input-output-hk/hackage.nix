{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      with-th = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pontarius-xmpp";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
        maintainer = "info@jonkri.com";
        author = "Jon Kristensen, Philipp Balzarek";
        homepage = "https://github.com/pontarius/pontarius-xmpp/";
        url = "http://www.jonkri.com/releases/pontarius-xmpp-0.3.0.1.tar.gz";
        synopsis = "An XMPP client library";
        description = "Pontarius XMPP is a work in progress implementation of RFC 6120\n(\"XMPP CORE\"), RFC 6121 (\"XMPP IM\"), and RFC 6122 (\"XMPP ADDR\").\nWhile in alpha, Pontarius XMPP works quite well and fulfills most\nrequirements of the RFCs.";
        buildType = "Simple";
      };
      components = {
        pontarius-xmpp = {
          depends  = ([
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base64-bytestring
            hsPkgs.binary
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.crypto-api
            hsPkgs.crypto-random
            hsPkgs.cryptohash
            hsPkgs.cryptohash-cryptoapi
            hsPkgs.data-default
            hsPkgs.dns
            hsPkgs.hslogger
            hsPkgs.iproute
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.pureMD5
            hsPkgs.resourcet
            hsPkgs.random
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.stringprep
            hsPkgs.text
            hsPkgs.tls
            hsPkgs.tls-extra
            hsPkgs.transformers
            hsPkgs.void
            hsPkgs.xml-types
            hsPkgs.xml-conduit
            hsPkgs.xml-picklers
          ] ++ [
            hsPkgs.bytestring
          ]) ++ pkgs.lib.optional (_flags.with-th && compiler.isGhc) hsPkgs.template-haskell;
        };
      };
    }