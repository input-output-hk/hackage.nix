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
        name = "search-algorithms";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Devon Hollowood";
      maintainer = "devonhollowood@gmail.com";
      author = "Devon Hollowood";
      homepage = "https://github.com/devonhollowood/search-algorithms#readme";
      url = "";
      synopsis = "Common graph search algorithms";
      description = "Library containing common graph search algorithms,\nincluding depth-first and breadth-first searches,\nDijkstra's algorithm, and A*";
      buildType = "Simple";
    };
    components = {
      "search-algorithms" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "search-algorithms-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.search-algorithms)
            (hsPkgs.containers)
            (hsPkgs.hspec)
          ];
        };
        "doc-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.search-algorithms)
            (hsPkgs.containers)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }