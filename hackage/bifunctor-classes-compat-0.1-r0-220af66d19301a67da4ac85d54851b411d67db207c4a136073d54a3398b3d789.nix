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
    flags = { semigroups = true; tagged = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "bifunctor-classes-compat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2008-2023 Edward A. Kmett";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "https://github.com/haskell-compat/bifunctor-classes-compat";
      url = "";
      synopsis = "Compatibility package for the Bifunctor, Bifoldable, and Bitraversable classes";
      description = "Compatibility package for the @Bifunctor@, @Bifoldable@,\nand @Bitraversable@ classes. See the\n@<http://hackage.haskell.org/package/bifunctors bifunctors>@\nlibrary for additional @Bifunctor@-related utilities.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).gt "8.2")) (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))) ++ (pkgs.lib).optional (flags.tagged) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))) ++ (pkgs.lib).optional (flags.semigroups && !(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.2" && (compiler.isGhc && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"));
        buildable = true;
        };
      };
    }