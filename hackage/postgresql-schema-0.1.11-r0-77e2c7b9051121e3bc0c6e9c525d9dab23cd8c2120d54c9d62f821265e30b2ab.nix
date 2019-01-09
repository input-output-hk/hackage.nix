{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-schema"; version = "0.1.11"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Mark Fine";
      maintainer = "mark.fine@gmail.com";
      author = "Mark Fine";
      homepage = "https://github.com/mfine/postgresql-schema";
      url = "";
      synopsis = "PostgreSQL Schema Management";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.postgresql-simple)
          (hsPkgs.shelly)
          (hsPkgs.text)
          ];
        };
      exes = {
        "schema-add" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.optparse-applicative)
            (hsPkgs.postgresql-schema)
            (hsPkgs.shelly)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            ];
          };
        "schema-apply" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.optparse-applicative)
            (hsPkgs.postgresql-schema)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        "schema-clear" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.optparse-applicative)
            (hsPkgs.postgresql-schema)
            (hsPkgs.shelly)
            (hsPkgs.text)
            ];
          };
        };
      };
    }