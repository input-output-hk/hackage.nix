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
        name = "pg-store";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Ole Krüger 2015";
      maintainer = "Ole Krüger <ole@vprsm.de>";
      author = "Ole Krüger <ole@vprsm.de>";
      homepage = "https://github.com/vapourismo/pg-store";
      url = "";
      synopsis = "Simple storage interface to PostgreSQL";
      description = "Simple storage interface to PostgreSQL";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.attoparsec)
          (hsPkgs.mtl)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pg-store)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }