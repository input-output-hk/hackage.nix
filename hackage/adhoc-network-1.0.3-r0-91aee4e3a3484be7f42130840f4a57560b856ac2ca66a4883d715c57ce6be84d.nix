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
      specVersion = "0";
      identifier = {
        name = "adhoc-network";
        version = "1.0.3";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "";
      author = "Stephan Friedrichs,\nHenning Günther,\nOliver Mielentz,\nMartin Wegner";
      homepage = "http://sep07.mroot.net/";
      url = "";
      synopsis = "Ad-hoc P2P network protocol";
      description = "This is a library for ad hoc P2p networking, developed for the Barracuda\nchat client (by Stephan Friedrichs,\nHenning Günther, Oliver Mielentz and Martin Wegner).\n\nThis library implements the RFCs (see for example\n<http://tools.ietf.org/html/draft-strauss-p2p-chat>).\n\nThe Darcs repository can be found at <http://repos.mroot.net/sep07-adhoc>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.HaXml)
          (hsPkgs.utf8-string)
          (hsPkgs.dataenc)
          (hsPkgs.Crypto)
          (hsPkgs.hsgnutls)
          (hsPkgs.pkcs1)
          (hsPkgs.xml-parsec)
        ];
      };
    };
  }