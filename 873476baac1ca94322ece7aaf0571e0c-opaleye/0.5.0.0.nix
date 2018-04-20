{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "opaleye";
          version = "0.5.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014-2016 Purely Agile Limited";
        maintainer = "Purely Agile";
        author = "Purely Agile";
        homepage = "https://github.com/tomjaguarpaw/haskell-opaleye";
        url = "";
        synopsis = "An SQL-generating DSL targeting PostgreSQL";
        description = "An SQL-generating DSL targeting PostgreSQL.  Allows\nPostgres queries to be written within Haskell in a\ntypesafe and composable fashion.";
        buildType = "Simple";
      };
      components = {
        opaleye = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.case-insensitive
            hsPkgs.bytestring
            hsPkgs.contravariant
            hsPkgs.postgresql-simple
            hsPkgs.pretty
            hsPkgs.product-profunctors
            hsPkgs.profunctors
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.time-locale-compat
            hsPkgs.uuid
            hsPkgs.void
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.contravariant
              hsPkgs.multiset
              hsPkgs.postgresql-simple
              hsPkgs.profunctors
              hsPkgs.product-profunctors
              hsPkgs.QuickCheck
              hsPkgs.semigroups
              hsPkgs.time
              hsPkgs.opaleye
            ];
          };
          tutorial = {
            depends  = [
              hsPkgs.base
              hsPkgs.postgresql-simple
              hsPkgs.profunctors
              hsPkgs.product-profunctors
              hsPkgs.time
              hsPkgs.opaleye
            ];
          };
        };
      };
    }