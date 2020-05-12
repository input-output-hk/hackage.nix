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
      identifier = { name = "data-fix-cse"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov, Oleg Kiselyov";
      homepage = "https://github.com/anton-k/data-fix-cse";
      url = "";
      synopsis = "Common subexpression elimination for the fixploint types.   ";
      description = "Common subexpression elimination for the fixploint types.   ";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }