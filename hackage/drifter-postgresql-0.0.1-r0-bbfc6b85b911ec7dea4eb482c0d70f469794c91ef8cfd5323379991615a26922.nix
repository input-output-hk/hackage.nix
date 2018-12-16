{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drifter-postgresql";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL support for the drifter schema migration tool";
      description = "Support for postgresql-simple Query migrations as well as arbitrary Haskell IO functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
          (hsPkgs.drifter)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.mtl)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.drifter)
            (hsPkgs.postgresql-simple)
            (hsPkgs.drifter-postgresql)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.either)
            (hsPkgs.text)
          ];
        };
      };
    };
  }