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
    flags = { tagged = true; };
    package = {
      specVersion = "1.24";
      identifier = { name = "bifunctor-classes-compat"; version = "0.1.1"; };
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
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (!(compiler.isMhs && true)) (pkgs.lib.optionals (!(compiler.isGhc && compiler.version.ge "8.2")) ([
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
        ] ++ pkgs.lib.optional (flags.tagged) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))));
        buildable = true;
      };
    };
  }