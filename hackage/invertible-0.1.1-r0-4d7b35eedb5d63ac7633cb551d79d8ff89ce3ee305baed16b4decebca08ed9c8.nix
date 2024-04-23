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
    flags = {
      arrows = true;
      hlist = true;
      invariant = true;
      lens = true;
      partial-isomorphisms = true;
      piso = true;
      semigroupoids = true;
      typecompose = true;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "invertible"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2016";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "bidirectional arrows, bijective functions, and invariant functors";
      description = "Representations and operations for bidirectional arrows (total isomorphisms: an\narrow paired with its inverse).  Classes for invariant functors and monoidal\nfunctors.  Includes a number of useful bijections and operations, as well as\ninteroperability with related packages.\n\nMost users will want to import one or more of \"Data.Invertible\" qualified, \"Control.Invertible.Monoidal\" unqualified, and any additional compatibility modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ((((((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."haskell-src-meta" or (errorHandler.buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ] ++ pkgs.lib.optional (flags.arrows) (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))) ++ pkgs.lib.optional (flags.hlist) (hsPkgs."HList" or (errorHandler.buildDepError "HList"))) ++ pkgs.lib.optional (flags.invariant) (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))) ++ pkgs.lib.optional (flags.lens) (hsPkgs."lens" or (errorHandler.buildDepError "lens"))) ++ pkgs.lib.optional (flags.partial-isomorphisms) (hsPkgs."partial-isomorphisms" or (errorHandler.buildDepError "partial-isomorphisms"))) ++ pkgs.lib.optional (flags.piso) (hsPkgs."Piso" or (errorHandler.buildDepError "Piso"))) ++ pkgs.lib.optional (flags.semigroupoids) (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))) ++ pkgs.lib.optional (flags.typecompose) (hsPkgs."TypeCompose" or (errorHandler.buildDepError "TypeCompose"));
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."invertible" or (errorHandler.buildDepError "invertible"))
          ];
          buildable = true;
        };
      };
    };
  }