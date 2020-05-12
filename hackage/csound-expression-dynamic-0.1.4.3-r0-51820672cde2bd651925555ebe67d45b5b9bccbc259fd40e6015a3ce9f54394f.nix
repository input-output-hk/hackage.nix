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
      identifier = { name = "csound-expression-dynamic"; version = "0.1.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-expression-dynamic";
      url = "";
      synopsis = "dynamic core for csound-expression library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wl-pprint" or (errorHandler.buildDepError "wl-pprint"))
          (hsPkgs."Boolean" or (errorHandler.buildDepError "Boolean"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."data-fix-cse" or (errorHandler.buildDepError "data-fix-cse"))
          ];
        buildable = true;
        };
      };
    }