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
      specVersion = "1.10";
      identifier = { name = "constructible"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "© 2013 Anders Kaseorg";
      maintainer = "Anders Kaseorg <andersk@mit.edu>";
      author = "Anders Kaseorg <andersk@mit.edu>";
      homepage = "http://andersk.mit.edu/haskell/constructible/";
      url = "";
      synopsis = "Exact computation with constructible real numbers";
      description = "The constructible reals are the subset of the real numbers that can\nbe represented exactly using field operations (addition,\nsubtraction, multiplication, division) and positive square roots.\nThey support exact computations, equality comparisons, and ordering.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary-search" or (errorHandler.buildDepError "binary-search"))
          (hsPkgs."complex-generic" or (errorHandler.buildDepError "complex-generic"))
          (hsPkgs."integer-roots" or (errorHandler.buildDepError "integer-roots"))
          ];
        buildable = true;
        };
      };
    }