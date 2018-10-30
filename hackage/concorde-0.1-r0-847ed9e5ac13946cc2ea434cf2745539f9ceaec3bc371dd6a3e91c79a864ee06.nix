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
      specVersion = "1.6";
      identifier = {
        name = "concorde";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Simple interface to the Concorde solver for the Traveling Salesperson Problem";
      description = "This package provides a simple interface to Concorde, a solver for the\nTraveling Salesperson Problem (TSP).  Concorde is available from\n<http://www.tsp.gatech.edu/concorde/index.html>.\n\nThis library uses the Lin–Kernighan heuristic via Concorde's @linkern@\nprogram.  It quickly produces good tours, which may not be optimal.  You\ncan directly control the tradeoff between run time and solution quality.\n\nAn example program is included.\n\nCurrently, only problems in two-dimensional Euclidean space are supported.\n\nMore features of Concorde can be added on request.  Feature requests and\npatches are always welcome.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.temporary)
          (hsPkgs.process)
          (hsPkgs.safe)
        ];
      };
    };
  }