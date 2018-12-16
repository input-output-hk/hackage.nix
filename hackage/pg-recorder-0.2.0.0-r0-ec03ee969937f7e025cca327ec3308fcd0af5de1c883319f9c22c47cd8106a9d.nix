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
        name = "pg-recorder";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Diogo Biazus";
      maintainer = "diogo@biazus.me";
      author = "Diogo Biazus";
      homepage = "https://github.com/githubuser/pg-recorder#readme";
      url = "";
      synopsis = "Initial project template from stack";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.protolude)
          (hsPkgs.optparse-applicative)
          (hsPkgs.optparse-text)
          (hsPkgs.resource-pool)
          (hsPkgs.text)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.hasql)
          (hsPkgs.hasql-pool)
          (hsPkgs.either)
          (hsPkgs.bytestring)
          (hsPkgs.stringsearch)
          (hsPkgs.contravariant)
        ];
      };
      exes = {
        "pg-recorder" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pg-recorder)
            (hsPkgs.protolude)
          ];
        };
      };
      tests = {
        "pg-recorder-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pg-recorder)
            (hsPkgs.resource-pool)
            (hsPkgs.hspec)
            (hsPkgs.protolude)
            (hsPkgs.postgresql-libpq)
            (hsPkgs.hasql)
            (hsPkgs.hasql-pool)
          ];
        };
      };
    };
  }