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
        version = "0.0.5.0";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright Â© 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/";
      url = "http://www.pontarius.org/releases/pontarius-xmpp-0.0.5.0.tar.gz";
      synopsis = "A (prototyped) secure and easy to use XMPP library";
      description = "A work in progress of an implementation of RFC 6120: XMPP:\nCore.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.enumerator)
          (hsPkgs.crypto-api)
          (hsPkgs.base64-string)
          (hsPkgs.regex-posix)
          (hsPkgs.pureMD5)
          (hsPkgs.utf8-string)
          (hsPkgs.network)
          (hsPkgs.xml-types)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.random)
          (hsPkgs.xml-enumerator)
          (hsPkgs.tls)
          (hsPkgs.containers)
          (hsPkgs.mtl)
        ];
      };
    };
  }