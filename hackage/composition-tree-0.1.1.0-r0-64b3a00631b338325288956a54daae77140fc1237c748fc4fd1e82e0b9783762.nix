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
      identifier = { name = "composition-tree"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Liam O'Connor, 2015";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/composition-tree";
      url = "";
      synopsis = "Composition trees for arbitrary monoids.";
      description = "A compositions list or composition tree is a list data type where the elements are monoids, and the mconcat of any contiguous sublist can be computed in logarithmic time. A common use case of this type is in a wiki, version control system, or collaborative editor, where each change or delta would be stored in a list, and it is sometimes necessary to compute the composed delta between any two versions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test-comp-tree" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."composition-tree" or (errorHandler.buildDepError "composition-tree"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            ];
          buildable = true;
          };
        };
      };
    }