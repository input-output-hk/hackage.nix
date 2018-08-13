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
        name = "abc-puzzle";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "patrick.bahr@gmail.com";
      author = "Patrick Bahr";
      homepage = "https://github.com/pa-ba/abc-puzzle";
      url = "";
      synopsis = "Generate instances of the ABC logic puzzle.";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "abc-puzzle" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.vector)
            (hsPkgs.minisat)
            (hsPkgs.Safe)
            (hsPkgs.random)
          ];
        };
      };
    };
  }