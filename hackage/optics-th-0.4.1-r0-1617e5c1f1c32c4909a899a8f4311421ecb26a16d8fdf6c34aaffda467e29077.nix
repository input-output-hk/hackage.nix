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
      specVersion = "2.2";
      identifier = { name = "optics-th"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "optics@well-typed.com";
      author = "Andrzej Rybczak";
      homepage = "";
      url = "";
      synopsis = "Optics construction using TemplateHaskell";
      description = "This package is part of the @<https://hackage.haskell.org/package/optics optics>@\npackage family.  It provides machinery to construct optics using @TemplateHaskell@.\n\nSee the @template-haskell-optics@ package for optics to work with @template-haskell@ types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "optics-th-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optics-core" or (errorHandler.buildDepError "optics-core"))
            (hsPkgs."optics-th" or (errorHandler.buildDepError "optics-th"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            ];
          buildable = true;
          };
        };
      };
    }