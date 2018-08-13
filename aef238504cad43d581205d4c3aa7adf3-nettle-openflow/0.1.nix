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
      specVersion = "1.2";
      identifier = {
        name = "nettle-openflow";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andreas.voellmy@yale.edu";
      author = "Andreas Voellmy, Ashish Agarwal, Sam Burnett, John Launchbury";
      homepage = "";
      url = "";
      synopsis = "High level configuration and control of computer networks.";
      description = "This module provides a logical representation of the messages of the OpenFlow\nprotocol (<http://www.openflowswitch.org>) and implements the binary formats\nfor these messages. This module also provides TCP servers that accept connections\nfrom switches and provide methods to receive messages from and send messages to\nconnected switches.\nThe library is under active development and should still be considered experimental.";
      buildType = "Simple";
    };
    components = {
      "nettle-openflow" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.bimap)
        ];
      };
    };
  }