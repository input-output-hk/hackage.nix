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
      identifier = { name = "patches-vector"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor";
      homepage = "https://github.com/liamoc/patches-vector";
      url = "";
      synopsis = "A library for patches (diffs) on vectors, composable and invertible.";
      description = "A patch is a collection of modifications (edits) to be made to a sequence of elements. Commonly\nfound in version control systems, patches are also a simple example of a group, supporting composition\nand inversion.\n\nThis library provides a pleasant interface for working with patches to vectors with any type of element.\nIt includes patch composition, inversion, and application, as well as a way to compute a patch between\ntwo vectors using the Wagner-Fischer algorithm.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."edit-distance-vector" or (errorHandler.buildDepError "edit-distance-vector"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
        ];
        buildable = true;
      };
      tests = {
        "test-patches-vector" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."patches-vector" or (errorHandler.buildDepError "patches-vector"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }