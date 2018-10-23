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
        name = "psql-helpers";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2015 Alexander Thiemann <mail@athiemann.net>";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "http://github.com/agrafix/psql-helpers#readme";
      url = "";
      synopsis = "A small collection of helper functions to generate postgresql queries";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "psql-helpers" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
        ];
      };
    };
  }