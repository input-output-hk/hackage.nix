{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-migration"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2014-2016, Andreas Meingast\n2016, Timo von Holtz";
      maintainer = "Timo von Holtz <tvh@tvholtz.de>";
      author = "Timo von Holtz <tvh@tvholtz.de>";
      homepage = "https://github.com/tvh/hasql-migration";
      url = "";
      synopsis = "PostgreSQL Schema Migrations";
      description = "A PostgreSQL-simple schema migration utility";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.contravariant)
          (hsPkgs.cryptohash)
          (hsPkgs.data-default-class)
          (hsPkgs.directory)
          (hsPkgs.hasql)
          (hsPkgs.hasql-transaction)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hasql)
            (hsPkgs.hasql-migration)
            (hsPkgs.hasql-transaction)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }