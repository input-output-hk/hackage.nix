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
      specVersion = "3.4";
      identifier = { name = "scoped-codensity"; version = "0.1.0.2"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "contact@mangoiv.com";
      author = "mangoiv";
      homepage = "https://git.mangoiv.com/mangoiv/scoped-codensity";
      url = "";
      synopsis = "CPS resource allocation but as a Monad and completely safe";
      description = "This implements a Monad just like `Codensity` from the `kan-extensions` package, but it uses a skolem trap just like the `ST s` monad to track resources allocated in the monad.\nThe package wraps around different \"scoped\" resources that cannot escape a `scoped` block and are safely deallocated when the block is left.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        buildable = true;
      };
      tests = {
        "scoped-codensity-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."scoped-codensity" or (errorHandler.buildDepError "scoped-codensity"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          ];
          buildable = true;
        };
      };
    };
  }