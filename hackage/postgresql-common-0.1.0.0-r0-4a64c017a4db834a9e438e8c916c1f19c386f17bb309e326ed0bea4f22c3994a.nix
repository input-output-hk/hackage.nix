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
        name = "postgresql-common";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/postgresql-common#readme";
      url = "";
      synopsis = "Library for sharing common PostgreSQL types across Haskell PostgreSQL libraries.";
      description = "Please see the README on GitHub at <https://github.com/iand675/postgresql-common#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.postgresql-simple)
        ];
      };
      tests = {
        "postgresql-common-test" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.postgresql-common)
            (hsPkgs.postgresql-simple)
          ];
        };
      };
    };
  }