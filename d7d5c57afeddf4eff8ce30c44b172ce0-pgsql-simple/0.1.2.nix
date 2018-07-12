{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "pgsql-simple";
          version = "0.1.2";
        };
        license = "BSD-3-Clause";
        copyright = "2011 Chris Done, 2011 MailRank, Inc.";
        maintainer = "Chris Done <chrisdone@gmail.com>";
        author = "Chris Done <chrisdone@gmail.com>, Bryan O'Sullivan <bos@mailrank.com>";
        homepage = "https://github.com/chrisdone/pgsql-simple";
        url = "";
        synopsis = "A mid-level PostgreSQL client library.";
        description = "A mid-level client library for the PostgreSQL database, intended to be\nfast and easy to use.";
        buildType = "Simple";
      };
      components = {
        "pgsql-simple" = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.pcre-light
            hsPkgs.old-locale
            hsPkgs.text
            hsPkgs.time
            hsPkgs.network
            hsPkgs.binary
            hsPkgs.mtl
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.utf8-string
            hsPkgs.containers
          ];
        };
      };
    }