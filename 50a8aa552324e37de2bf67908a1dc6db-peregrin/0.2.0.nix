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
        name = "peregrin";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Database migration support for use in other libraries.";
      description = "Database migration support for use in other libraries.\nCurrently only supports PostgreSQL.";
      buildType = "Simple";
    };
    components = {
      "peregrin" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pg-harness-client)
            (hsPkgs.postgresql-simple)
            (hsPkgs.resource-pool)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.peregrin)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }