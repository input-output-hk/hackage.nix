{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drifter-postgresql";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@michaelxavier.net";
      author = "Michael Xavier";
      homepage = "http://github.com/michaelxavier/drifter-postgresql";
      url = "";
      synopsis = "PostgreSQL support for the drifter schema migration tool";
      description = "Support for postgresql-simple Query migrations as well as\narbitrary Haskell IO functions. Be sure to check the\nexamples dir for a usage example.";
      buildType = "Simple";
    };
    components = {
      "drifter-postgresql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
          (hsPkgs.containers)
          (hsPkgs.drifter)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "test" = {
          depends  = [
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