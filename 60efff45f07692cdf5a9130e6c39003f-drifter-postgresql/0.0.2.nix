{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      lib-werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "drifter-postgresql";
        version = "0.0.2";
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
          (hsPkgs.drifter)
          (hsPkgs.time)
          (hsPkgs.either)
          (hsPkgs.mtl)
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