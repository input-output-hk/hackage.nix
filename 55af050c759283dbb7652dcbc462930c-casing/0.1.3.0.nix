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
        name = "casing";
        version = "0.1.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "";
      url = "";
      synopsis = "Convert between various source code casing conventions";
      description = "Converts between camelCase, PascalCase, kebab-case, and three\nflavors of snake_case.";
      buildType = "Simple";
    };
    components = {
      "casing" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.casing)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }