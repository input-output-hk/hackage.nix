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
      specVersion = "1.8";
      identifier = {
        name = "push-notify-ccs";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Marcos Pividori <marcos.pividori@gmail.com>";
      author = "Marcos Pividori, mentored by Michael Snoyman.";
      homepage = "http://gsoc2013cwithmobiledevices.blogspot.com.ar/";
      url = "";
      synopsis = "A server-side library for sending/receiving push notifications through CCS (Google Cloud Messaging).";
      description = "This library offers a simple abstraction for sending/receiving notifications through CCS (XMPP - Google Cloud Messaging)\n\nFor more information and test examples: <http://gsoc2013cwithmobiledevices.blogspot.com.ar/>\n\nGitHub repository: <https://github.com/MarcosPividori/GSoC-Communicating-with-mobile-devices>";
      buildType = "Simple";
    };
    components = {
      "push-notify-ccs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.cprng-aes)
          (hsPkgs.crypto-random)
          (hsPkgs.data-default)
          (hsPkgs.hslogger)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.stm)
          (hsPkgs.pontarius-xmpp)
          (hsPkgs.push-notify)
          (hsPkgs.retry)
          (hsPkgs.text)
          (hsPkgs.tls)
          (hsPkgs.tls-extra)
          (hsPkgs.unordered-containers)
          (hsPkgs.xml-types)
        ];
      };
    };
  }