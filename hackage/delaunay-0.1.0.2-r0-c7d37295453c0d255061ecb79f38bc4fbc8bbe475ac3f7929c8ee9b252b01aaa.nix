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
      specVersion = "1.8";
      identifier = { name = "delaunay"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "m [dot] ruegenberg [at] picodesign [dot] de";
      author = "Marcel Ruegenberg";
      homepage = "http://github.com/mruegenberg/Delaunay";
      url = "";
      synopsis = "Build a Delaunay triangulation of a set of points";
      description = "This package provides a single function that builds a Delaunay triangulation of a set of points.\nUse '--ghc-options=-fllvm' for improved performance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          ];
        buildable = true;
        };
      tests = {
        "delaunay-testsuite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AC-Vector" or (errorHandler.buildDepError "AC-Vector"))
            (hsPkgs."delaunay" or (errorHandler.buildDepError "delaunay"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }