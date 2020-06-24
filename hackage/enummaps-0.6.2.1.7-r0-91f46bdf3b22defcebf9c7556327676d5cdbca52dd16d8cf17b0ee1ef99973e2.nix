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
      specVersion = "3.0";
      identifier = { name = "enummaps"; version = "0.6.2.1.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "me@leif.nz";
      author = "Leif Metcalf";
      homepage = "";
      url = "";
      synopsis = "Enum wrappers for IntMap and IntSet";
      description = "This package provides wrappers for IntMap and IntSet that allow one to use any type\nwith an Enum instance as a key.\n\nSimilarities with enummapset-th:\n\n  * Map functions are polymorphic, to match those in Data.Map and\n  Data.Set\n\nSimilarities with enummapset:\n\n  * Doesn't use template haskell\n\nDifferences from both:\n\n  * 'unions' works on any (representational) Foldable rather than on\n  just lists\n  * All functions in Data.Set and Data.Map.* have an equivalent in\n  Data.EnumSet or Data.EnumMap.*";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      };
    }