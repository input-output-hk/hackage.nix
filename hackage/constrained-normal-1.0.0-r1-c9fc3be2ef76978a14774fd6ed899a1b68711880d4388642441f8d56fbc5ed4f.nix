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
      identifier = { name = "constrained-normal"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 The University of Kansas";
      maintainer = "Neil Sculthorpe <neil.sculthorpe@ntu.ac.uk>";
      author = "Neil Sculthorpe";
      homepage = "http://www.ittc.ku.edu/csdl/fpg/theory/constrained-monad-problem.html";
      url = "";
      synopsis = "Normalised Deep Embeddings for Constrained Type-Class Instances";
      description = "The package provides normal forms for monads and related structures, similarly to the Operational package.\nThe difference is that we parameterise the normal forms on a constraint, and apply that constraint to all\nexistential types within the normal form.\nThis allows monad (and other) instances to be generated for underlying types that require constraints on\ntheir return-like and bind-like operations, e.g. Set.\n\nThis is documented in the following paper:\n\nThe Constrained-Monad Problem.  Neil Sculthorpe and Jan Bracker and George Giorgidze and Andy Gill.  2013.\n<http://dx.doi.org/10.1145/2500365.2500602>\n\nThe functionality exposed by this library is also used internally by the Set-Monad and RMonad packages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }