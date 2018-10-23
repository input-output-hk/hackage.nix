{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "circle-packing";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2012, Joachim Breitner";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "";
      url = "";
      synopsis = "Simple heuristic for packing discs of varying radii in a circle";
      description = "Given a number of circles with their radii, this packags\ntries arrange them tightly, without overlap and forming a\nlarge circle.\n\nFinding the optimal solution is NP hard, so only\nheuristics are feasible. This particular\nimplementation is neither very good nor very fast,\ncompared to the state of the art in research. Nevertheless\nit is simple to use and gives visually acceptable results.\n\nContributions of better algorithms are welcome.";
      buildType = "Simple";
    };
    components = {
      "circle-packing" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }