{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      dev = false;
      db-tests = false;
      older-call-syntax = true;
      debug-queries = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "postgresql-simple-bind";
        version = "0.3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Al Zohali <zohl@fmap.me>";
      author = "Al Zohali";
      homepage = "";
      url = "";
      synopsis = "FFI-like bindings for PostgreSQL stored functions";
      description = "For tutorial see here: https:\\/\\/github.com\\/zohl\\/postgresql-simple-bind\\/blob\\/master\\/README.md";
      buildType = "Simple";
    };
    components = {
      "postgresql-simple-bind" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.data-default)
          (hsPkgs.exceptions)
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
            (hsPkgs.hspec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-simple-bind)
            (hsPkgs.text)
          ];
        };
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.case-conversion)
            (hsPkgs.data-default)
            (hsPkgs.hspec)
            (hsPkgs.postgresql-simple)
            (hsPkgs.postgresql-simple-bind)
            (hsPkgs.text)
          ];
        };
      };
    };
  }