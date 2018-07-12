{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "libravatar";
          version = "0.3.0.1";
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
        "libravatar" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cryptonite
            hsPkgs.data-default-class
            hsPkgs.dns
            hsPkgs.network-uri
            hsPkgs.random
            hsPkgs.url
            hsPkgs.utf8-string
          ];
        };
      };
    }