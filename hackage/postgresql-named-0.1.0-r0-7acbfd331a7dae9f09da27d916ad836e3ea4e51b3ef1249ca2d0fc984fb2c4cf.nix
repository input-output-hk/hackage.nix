{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-named";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(C) 2017 Moritz Kiefer";
      maintainer = "moritz.kiefer@purelyfunctional.org";
      author = "Moritz Kiefer";
      homepage = "https://github.com/cocreature/postgresql-named#readme";
      url = "";
      synopsis = "Generic deserialization of PostgreSQL rows based on column names";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.extra)
          (hsPkgs.generics-sop)
          (hsPkgs.mtl)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.postgresql-simple)
          (hsPkgs.utf8-string)
        ];
      };
      tests = {
        "postgresql-named-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.generics-sop)
            (hsPkgs.hspec)
            (hsPkgs.postgresql-named)
            (hsPkgs.postgresql-simple)
          ];
        };
      };
    };
  }