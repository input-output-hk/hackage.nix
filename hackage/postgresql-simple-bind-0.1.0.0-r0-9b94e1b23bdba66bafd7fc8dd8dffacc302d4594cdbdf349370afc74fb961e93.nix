{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-simple-bind";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Al Zohali <zohl@fmap.me>";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "A FFI-like bindings for PostgreSQL stored functions";
      description = "For tutorial see here: https:\\/\\/github.com\\/zohl\\/postgresql-simple-bind\\/blob\\/master\\/README.md";
      buildType = "Simple";
    };
    components = {
      "postgresql-simple-bind" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.heredoc)
          (hsPkgs.postgresql-simple)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-simple-bind)
            (hsPkgs.text)
          ];
        };
        "examples" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-conversion)
            (hsPkgs.HUnit)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-simple-bind)
            (hsPkgs.text)
          ];
        };
      };
    };
  }