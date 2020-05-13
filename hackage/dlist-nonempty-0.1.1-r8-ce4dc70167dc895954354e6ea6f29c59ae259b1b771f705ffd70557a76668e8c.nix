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
      identifier = { name = "dlist-nonempty"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2006-2009 Don Stewart, 2013-2016 Sean Leather, 2017 Oleg Grenrus";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Don Stewart, Oleg  Grenrus";
      homepage = "https://github.com/phadej/dlist-nonempty";
      url = "";
      synopsis = "Non-empty difference lists";
      description = "Difference lists are a list-like type supporting O(1) append. This is\nparticularly useful for efficient logging and pretty printing (e.g. with the\nWriter monad), where list append quickly becomes too expensive.\n\n> DList a         ≅ [a] -> [a]\n> NonEmptyDList a ≅ [a] -> NonEmpty a\n\nFor empty variant, @DList@, see <http://hackage.haskell.org/package/dlist dlist package>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."dlist-nonempty" or (errorHandler.buildDepError "dlist-nonempty"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
            (hsPkgs."dlist-instances" or (errorHandler.buildDepError "dlist-instances"))
            (hsPkgs."dlist-nonempty" or (errorHandler.buildDepError "dlist-nonempty"))
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = true;
          };
        };
      };
    }