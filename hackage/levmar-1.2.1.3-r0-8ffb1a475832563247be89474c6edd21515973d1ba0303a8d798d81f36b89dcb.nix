{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "levmar"; version = "1.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 - 2012 Roel van Dijk & Bas van Dijk";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>\nBas van Dijk <v.dijk.bas@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>\nBas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/basvandijk/levmar";
      url = "";
      synopsis = "An implementation of the Levenberg-Marquardt algorithm";
      description = "The Levenberg-Marquardt algorithm is an iterative technique that\nfinds a local minimum of a function that is expressed as the sum of\nsquares of nonlinear functions. It has become a standard technique\nfor nonlinear least-squares problems and can be thought of as a\ncombination of steepest descent and the Gauss-Newton method. When\nthe current solution is far from the correct one, the algorithm\nbehaves like a steepest descent method: slow, but guaranteed to\nconverge. When the current solution is close to the correct\nsolution, it becomes a Gauss-Newton method.\n\nOptional box- and linear constraints can be given. Both single and\ndouble precision floating point types are supported.\n\nThe actual algorithm is implemented in a\n<http://www.ics.forth.gr/~lourakis/levmar/ C library> which is\nbundled with @bindings-levmar@ which this package depends on.\n\nA note regarding the license:\n\nThis library depends on @bindings-levmar@ which is bundled together\nwith a C library which falls under the GPL. Please be aware of this\nwhen distributing programs linked with this library. For details see\nthe description and license of @bindings-levmar@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
          (hsPkgs."bindings-levmar" or (errorHandler.buildDepError "bindings-levmar"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }