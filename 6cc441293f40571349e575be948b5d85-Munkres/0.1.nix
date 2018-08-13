{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = true;
      debug = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Munkres";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "";
      url = "";
      synopsis = "Munkres' assignment algorithm (hungarian method)";
      description = "The Munkres algorithm solves the weighted minimum matching\nproblem in a complete bipartite graph, in O(n^3) time.\nThis problem is often called the 'assignment problem'.\nSee eg. <http://en.wikipedia.org/wiki/Hungarian_algorithm>.";
      buildType = "Simple";
    };
    components = {
      "Munkres" = {
        depends  = (if _flags.splitbase
          then [
            (hsPkgs.base)
            (hsPkgs.array)
          ]
          else [
            (hsPkgs.base)
          ]) ++ pkgs.lib.optional (_flags.debug) (hsPkgs.random);
      };
    };
  }