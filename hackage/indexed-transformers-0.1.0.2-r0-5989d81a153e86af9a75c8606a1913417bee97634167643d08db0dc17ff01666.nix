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
      identifier = { name = "indexed-transformers"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2024 Eitan Chatav";
      maintainer = "eitan@morphism.tech";
      author = "Eitan Chatav";
      homepage = "https://github.com/morphismtech/indexed-transformers#readme";
      url = "";
      synopsis = "Atkey indexed monad transformers";
      description = "Please see the README on GitHub at <https://github.com/morphismtech/indexed-transformers#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }