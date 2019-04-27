{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "postgresql-simple"; version = "0.6.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 MailRank, Inc.\n(c) 2011-2018 Leon P Smith\n(c) 2018-2019 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Bryan O'Sullivan, Leon P Smith";
      homepage = "";
      url = "";
      synopsis = "Mid-Level PostgreSQL client library";
      description = "Mid-Level PostgreSQL client library, forked from mysql-simple.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring-builder)
          (hsPkgs.case-insensitive)
          (hsPkgs.hashable)
          (hsPkgs.Only)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.uuid-types)
          (hsPkgs.scientific)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs.fail)
          (hsPkgs.semigroups)
          ]) ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.6")) (hsPkgs.ghc-prim);
        };
      tests = {
        "inspection" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.inspection-testing)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.cryptohash-md5)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.HUnit)
            (hsPkgs.postgresql-simple)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
            (hsPkgs.case-insensitive)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.6")) (hsPkgs.ghc-prim);
          };
        };
      benchmarks = {
        "select" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.postgresql-simple)
            (hsPkgs.vector)
            ];
          };
        };
      };
    }