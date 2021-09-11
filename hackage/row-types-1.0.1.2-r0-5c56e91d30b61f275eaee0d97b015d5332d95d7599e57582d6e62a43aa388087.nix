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
      identifier = { name = "row-types"; version = "1.0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "dwincort@gmail.com";
      author = "Daniel Winograd-Cort, Matthew Farkas-Dyck";
      homepage = "https://github.com/target/row-types";
      url = "";
      synopsis = "Open Records and Variants";
      description = "This package uses closed type families and type literals to implement open\nrecords and variants.\nThe core is based off of the <https://hackage.haskell.org/package/CTRex CTRex>\npackage, but it also includes polymorphic variants and a number of\nadditional functions.  That said, it is not a proper superset of CTRex as it\nspecifically forbids records from having more than one element of the same\nlabel.";
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
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
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
            (hsPkgs."gauge" or (errorHandler.buildDepError "gauge"))
            ];
          buildable = true;
          };
        };
      };
    }