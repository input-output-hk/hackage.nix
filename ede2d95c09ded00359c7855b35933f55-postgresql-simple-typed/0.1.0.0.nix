{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-simple-typed";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tolysz@gmail.com";
      author = "Marcin Tolysz";
      homepage = "https://github.com/tolysz/postgresql-simple-typed";
      url = "";
      synopsis = "Typed extension for PostgreSQL simple";
      description = "Simplifies simple";
      buildType = "Simple";
    };
    components = {
      "postgresql-simple-typed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.typedquery)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.postgresql-simple)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.utf8-string)
        ];
      };
    };
  }