{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libravatar";
          version = "0.3.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
        maintainer = "fr33domlover@riseup.net";
        author = "fr33domlover";
        homepage = "http://rel4tion.org/projects/libravatar/";
        url = "";
        synopsis = "Use Libravatar, the decentralized avatar delivery service";
        description = "This package is a Haskell library for\n<http://libravatar.org Libravatar>.";
        buildType = "Simple";
      };
      components = {
        libravatar = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.crypto-api
            hsPkgs.data-default-class
            hsPkgs.dns
            hsPkgs.network-uri
            hsPkgs.pureMD5
            hsPkgs.random
            hsPkgs.SHA
            hsPkgs.url
            hsPkgs.utf8-string
          ];
        };
      };
    }