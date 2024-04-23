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
      specVersion = "1.6";
      identifier = { name = "regions-monadstf"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Bas van Dijk";
      maintainer = "Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Monads-tf instances for the RegionT monad transformer";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."unicode-symbols" or (errorHandler.buildDepError "unicode-symbols"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."regions" or (errorHandler.buildDepError "regions"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
        ];
        buildable = true;
      };
    };
  }