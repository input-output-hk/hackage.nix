{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      with-th = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "pontarius-xmpp";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
        maintainer = "info@jonkri.com";
        author = "Philipp Balzarek";
        homepage = "https://github.com/pontarius/pontarius-xmpp/";
        url = "http://www.jonkri.com/releases/pontarius-xmpp-0.4.3.tar.gz";
        synopsis = "An XMPP client library";
        description = "Pontarius XMPP is a work in progress implementation of RFC 6120\n(\"XMPP CORE\"), RFC 6121 (\"XMPP IM\"), and RFC 6122 (\"XMPP ADDR\").\nWhile in alpha, Pontarius XMPP works quite well and fulfills most\nrequirements of the RFCs.";
        buildType = "Custom";
      };
      components = {
        "pontarius-xmpp" = {
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
            hsPkgs.exceptions
            hsPkgs.hslogger
            hsPkgs.iproute
            hsPkgs.lens-family
            hsPkgs.lifted-base
            hsPkgs.mtl
            hsPkgs.network
            hsPkgs.profunctors
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.resourcet
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.stringprep
            hsPkgs.text
            hsPkgs.tls
            hsPkgs.transformers
            hsPkgs.unbounded-delays
            hsPkgs.void
            hsPkgs.x509-system
            hsPkgs.xml-conduit
            hsPkgs.xml-picklers
            hsPkgs.xml-types
          ] ++ [
            hsPkgs.bytestring
          ]) ++ pkgs.lib.optional (_flags.with-th && (compiler.isGhc && compiler.version.ge "7.6.1")) hsPkgs.template-haskell;
        };
        tests = {
          "tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.Cabal
              hsPkgs.QuickCheck
              hsPkgs.async
              hsPkgs.async
              hsPkgs.conduit
              hsPkgs.containers
              hsPkgs.data-default
              hsPkgs.derive
              hsPkgs.hslogger
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.lens
              hsPkgs.network
              hsPkgs.pontarius-xmpp
              hsPkgs.quickcheck-instances
              hsPkgs.ranges
              hsPkgs.smallcheck
              hsPkgs.stm
              hsPkgs.stringprep
              hsPkgs.tasty
              hsPkgs.tasty-hspec
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
              hsPkgs.transformers
              hsPkgs.xml-picklers
              hsPkgs.xml-types
            ];
          };
          "doctest" = {
            depends  = [
              hsPkgs.base
              hsPkgs.doctest
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.QuickCheck
              hsPkgs.derive
              hsPkgs.quickcheck-instances
            ];
          };
          "runtests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.configurator
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.hslogger
              hsPkgs.hspec
              hsPkgs.hspec-expectations
              hsPkgs.mtl
              hsPkgs.network
              hsPkgs.pontarius-xmpp
              hsPkgs.stm
              hsPkgs.text
              hsPkgs.xml-picklers
              hsPkgs.xml-types
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tls
            ];
          };
        };
        benchmarks = {
          "benchmarks" = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.pontarius-xmpp
            ];
          };
        };
      };
    }