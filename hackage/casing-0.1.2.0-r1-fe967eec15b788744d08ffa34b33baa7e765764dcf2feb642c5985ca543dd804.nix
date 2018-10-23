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
        name = "casing";
        version = "0.1.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "Convert between various source code casing conventions";
      description = "Converts between camelCase, PascalCase, kebab-case, and\nthree flavors of snake_case.";
      buildType = "Simple";
    };
    components = {
      "casing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
    };
  }