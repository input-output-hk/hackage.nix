{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "opaleye";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
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
            hsPkgs.base
            hsPkgs.contravariant
            hsPkgs.old-locale
            hsPkgs.postgresql-simple
            hsPkgs.pretty
            hsPkgs.product-profunctors
            hsPkgs.profunctors
            hsPkgs.semigroups
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.time
            hsPkgs.uuid
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.postgresql-simple
              hsPkgs.profunctors
              hsPkgs.product-profunctors
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