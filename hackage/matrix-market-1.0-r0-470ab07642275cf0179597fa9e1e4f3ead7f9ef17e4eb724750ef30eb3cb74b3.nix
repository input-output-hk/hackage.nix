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
      specVersion = "1.2.0";
      identifier = { name = "matrix-market"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Patrick Perry <patperry@stanford.edu>";
      maintainer = "Patrick Perry <patperry@stanford.edu>";
      author = "Patrick Perry";
      homepage = "http://stat.stanford.edu/~patperry/code/matrix-market";
      url = "";
      synopsis = "Read and write NIST Matrix Market files";
      description = "The Matrix Market (MM) exchange formats provide a simple mechanism\nto facilitate the exchange of matrix data. In particular, the\nobjective has been to define a minimal base ASCII file format which\ncan be very easily explained and parsed, but can easily adapted to\napplications with a more rigid structure, or extended to related\ndata objects. The MM exchange format for matrices is really a\ncollection of affiliated formats which share design elements. In the\ninitial specification, two matrix formats are defined.\n\nCoordinate Format - A file format suitable for representing general\nsparse matrices. Only nonzero entries are provided, and the coordinates\nof each nonzero entry is given explicitly.\n\nArray Format - A file format suitable for representing general dense\nmatrices. All entries are provided in a pre-defined (column-oriented)\norder.\n\nWe extend the above two storage schemes to vectors, as well.\n\nFor more information, see the NIST Matrix Market webpage:\n<http://http://math.nist.gov/MatrixMarket/>\n";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }