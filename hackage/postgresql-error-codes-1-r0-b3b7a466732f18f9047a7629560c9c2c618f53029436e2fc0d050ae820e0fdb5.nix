{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "postgresql-error-codes"; version = "1"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/postgresql-error-codes";
      url = "";
      synopsis = "PostgreSQL error codes";
      description = "";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.bytestring) ]; }; };
    }