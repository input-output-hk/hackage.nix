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
        name = "indextype";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "Clinton Mead (2017)";
      maintainer = "clintonmead@gmail.com";
      author = "Clinton Mead";
      homepage = "";
      url = "";
      synopsis = "A series of type families and constraints for \"indexable\" types.";
      description = "This package deals with types that can roughly be \"indexed\" at compile time by an integer.\nFor example, tuples and be indexed by their nth elements, and functions by their nth argument.\nA number of type functions allow one to extract these subtypes, i.e. the type of the 2nd element of a given tuple.\nFurthermore, constraints are defined which allow one to easily constrain types to these index types,\ne.g. a constraint that says \"'t' is a 3 tuple\". 'Control.IndexT' has more detail.";
      buildType = "Simple";
    };
    components = {
      "indextype" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }