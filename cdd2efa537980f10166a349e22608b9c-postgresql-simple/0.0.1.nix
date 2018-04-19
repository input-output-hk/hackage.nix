{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "postgresql-simple";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 MailRank, Inc.\n(c) 2011 Leon P Smith";
        maintainer = "Leon P Smith <leon@melding-monads.com>";
        author = "Bryan O'Sullivan, Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "Mid-Level PostgreSQL client library";
        description = "Mid-Level PostgreSQL client library, forked from mysql-simple.";
        buildType = "Simple";
      };
      components = {
        postgresql-simple = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.postgresql-libpq
            hsPkgs.pcre-light
            hsPkgs.old-locale
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
          ];
        };
      };
    }