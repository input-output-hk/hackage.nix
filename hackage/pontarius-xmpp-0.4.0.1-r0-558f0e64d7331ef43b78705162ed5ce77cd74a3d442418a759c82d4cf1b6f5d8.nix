{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { with-th = true; };
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "pontarius-xmpp";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Dmitry Astapov, Pierre Kovalev, Mahdi Abdinejadi, Jon Kristensen,\nIETF Trust, Philipp Balzarek";
      maintainer = "info@jonkri.com";
      author = "Jon Kristensen, Philipp Balzarek";
      homepage = "https://github.com/pontarius/pontarius-xmpp/";
      url = "http://www.jonkri.com/releases/pontarius-xmpp-0.4.0.1.tar.gz";
      synopsis = "An XMPP client library";
      description = "Pontarius XMPP is a work in progress implementation of RFC 6120\n(\"XMPP CORE\"), RFC 6121 (\"XMPP IM\"), and RFC 6122 (\"XMPP ADDR\").\nWhile in alpha, Pontarius XMPP works quite well and fulfills most\nrequirements of the RFCs.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = ([
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.binary)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.crypto-api)
          (hsPkgs.crypto-random)
          (hsPkgs.cryptohash)
          (hsPkgs.cryptohash-cryptoapi)
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
          (hsPkgs.unbounded-delays)
          (hsPkgs.void)
          (hsPkgs.xml-types)
          (hsPkgs.xml-conduit)
          (hsPkgs.xml-picklers)
        ] ++ [
          (hsPkgs.bytestring)
        ]) ++ pkgs.lib.optional (flags.with-th && (compiler.isGhc && compiler.version.ge "7.6.1")) (hsPkgs.template-haskell);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.async)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.derive)
            (hsPkgs.hslogger)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.lens)
            (hsPkgs.network)
            (hsPkgs.pontarius-xmpp)
            (hsPkgs.quickcheck-instances)
            (hsPkgs.ranges)
            (hsPkgs.smallcheck)
            (hsPkgs.stm)
            (hsPkgs.stringprep)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.xml-picklers)
            (hsPkgs.xml-types)
          ];
        };
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.QuickCheck)
            (hsPkgs.derive)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
      benchmarks = {
        "benchmarks" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.pontarius-xmpp)
          ];
        };
      };
    };
  }