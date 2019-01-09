{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-simple-typed"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2014-7 Marcin Tolysz";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/postgresql-simple-typed";
      url = "";
      synopsis = "Typed extension for PostgreSQL simple";
      description = "Simplifies simple";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.typedquery)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.postgresql-simple)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          ];
        };
      };
    }