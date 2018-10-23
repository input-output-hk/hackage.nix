{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "HXMPP";
        version = "0.0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011, Jon Kristensen";
      maintainer = "jon.kristensen@pontarius.org";
      author = "Jon Kristensen, Mahdi Abdinejadi";
      homepage = "http://www.pontarius.org/sub-projects/hxmpp/";
      url = "http://www.pontarius.org/releases/hxmpp-0.0.1.0.tar.gz";
      synopsis = "A (prototyped) easy to use XMPP library";
      description = "A work in progress of an implementation of RFC 3920: XMPP\nCore.";
      buildType = "Simple";
    };
    components = {
      "HXMPP" = {
        depends  = [
          (hsPkgs.HLogger)
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
        ];
      };
      exes = {
        "hxmpp-0.0.1.0-test" = {
          depends  = [
            (hsPkgs.HLogger)
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
          ];
        };
      };
    };
  }