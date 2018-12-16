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
        name = "pontarius-xmpp";
        version = "0.0.7.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/";
      url = "";
      synopsis = "A prototyped and incomplete implementation of RFC 6120:\nXMPP: Core";
      description = "A work in progress of an implementation of RFC 6120: XMPP:\nCore, as well as RFC 6122: XMPP: Address Format and other\ndepending standards. A new version of Pontarius XMPP is\nreleased every three weeks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.enumerator)
          (hsPkgs.crypto-api)
          (hsPkgs.base64-string)
          (hsPkgs.pureMD5)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.random)
          (hsPkgs.xml-enumerator)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text-icu)
          (hsPkgs.stringprep)
          (hsPkgs.asn1-data)
          (hsPkgs.cryptohash)
          (hsPkgs.time)
          (hsPkgs.certificate)
          (hsPkgs.ranges)
          (hsPkgs.uuid)
        ];
      };
    };
  }