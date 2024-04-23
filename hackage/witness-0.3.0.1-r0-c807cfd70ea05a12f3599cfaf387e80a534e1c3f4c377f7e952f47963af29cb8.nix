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
      specVersion = "1.12";
      identifier = { name = "witness"; version = "0.3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Ashley Yakeley <ashley@semantic.org>";
      maintainer = "Ashley Yakeley <ashley@semantic.org>";
      author = "Ashley Yakeley <ashley@semantic.org>";
      homepage = "https://github.com/AshleyYakeley/witness";
      url = "";
      synopsis = "values that witness types";
      description = "A witness is a value that /witnesses/ some sort of constraint on some list of type variables.\nThis library provides support for simple witnesses, that constrain a type variable to a single type, and equality witnesses, that constrain two type variables to be the same type.\nIt also provides classes for representatives, which are values that represent types.\nSee the paper /Witnesses and Open Witnesses/ (<http://semantic.org/stuff/Open-Witnesses.pdf>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."categories" or (errorHandler.buildDepError "categories"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
        ];
        buildable = true;
      };
    };
  }