{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "postgresql-query";
          version = "1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "Aleksey Uimanov";
        homepage = "https://bitbucket.org/s9gf4ult/postgresql-query";
        url = "";
        synopsis = "Sql interpolating quasiquote plus some kind of primitive ORM\nusing it";
        description = "";
        buildType = "Simple";
      };
      components = {
        postgresql-query = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.either
            hsPkgs.exceptions
            hsPkgs.file-embed
            hsPkgs.haskell-src-meta
            hsPkgs.monad-control
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.postgresql-simple
            hsPkgs.resource-pool
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.transformers-compat
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.attoparsec
              hsPkgs.postgresql-query
              hsPkgs.quickcheck-assertions
              hsPkgs.quickcheck-instances
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-th
              hsPkgs.text
            ];
          };
        };
      };
    }