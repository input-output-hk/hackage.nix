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
      identifier = { name = "monad-var"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017 effectfully";
      maintainer = "effectfully@gmail.com";
      author = "effectfully";
      homepage = "https://github.com/effectfully/monad-var#readme";
      url = "";
      synopsis = "Generic operations over variables";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
        ];
        buildable = true;
      };
    };
  }