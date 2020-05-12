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
      identifier = { name = "ComonadSheet"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2013-2014 Kenneth W. Foner";
      maintainer = "kenneth.foner@gmail.com";
      author = "Kenneth Foner";
      homepage = "https://github.com/kwf/ComonadSheet";
      url = "";
      synopsis = "A library for expressing spreadsheet-like computations as the fixed-points of comonads.";
      description = "@ComonadSheet@ is a library for expressing spreadsheet-like computations with absolute and relative references, using fixed-points of n-dimensional comonads. For examples of use, see the <https://github.com/kwf/ComonadSheet GitHub page> for the library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."distributive" or (errorHandler.buildDepError "distributive"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."applicative-numbers" or (errorHandler.buildDepError "applicative-numbers"))
          (hsPkgs."Stream" or (errorHandler.buildDepError "Stream"))
          (hsPkgs."NestedFunctor" or (errorHandler.buildDepError "NestedFunctor"))
          (hsPkgs."PeanoWitnesses" or (errorHandler.buildDepError "PeanoWitnesses"))
          (hsPkgs."IndexedList" or (errorHandler.buildDepError "IndexedList"))
          (hsPkgs."Tape" or (errorHandler.buildDepError "Tape"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }