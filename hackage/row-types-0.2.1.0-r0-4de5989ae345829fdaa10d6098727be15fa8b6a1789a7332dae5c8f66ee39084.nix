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
      identifier = { name = "row-types"; version = "0.2.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "daniel.winograd-cort@target.com, matthew.farkas-dyck@target.com";
      author = "Daniel Winograd-Cort, Matthew Farkas-Dyck";
      homepage = "";
      url = "";
      synopsis = "Open Records and Variants";
      description = "This package uses closed type families and type literals to implement open\nrecords and variants.\nThe core is based off of the <https://hackage.haskell.org/package/CTRex CTRex>\npackage, but it additionally includes polymorphic variants and a number of\nadditional functions.  That said, it is not a proper superset of CTRex as it\nspecifically forbids records from having more than one element of the same\nlabel.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "perf" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."row-types" or (errorHandler.buildDepError "row-types"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }