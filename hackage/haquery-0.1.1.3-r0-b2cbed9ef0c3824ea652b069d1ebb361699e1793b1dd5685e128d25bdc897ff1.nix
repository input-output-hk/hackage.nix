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
      specVersion = "1.8";
      identifier = { name = "haquery"; version = "0.1.1.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dobronszki@gmail.com";
      author = "Janos Dobronszki";
      homepage = "https://github.com/crufter/haquery";
      url = "";
      synopsis = "jQuery for Haskell.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
        ];
        buildable = true;
      };
    };
  }