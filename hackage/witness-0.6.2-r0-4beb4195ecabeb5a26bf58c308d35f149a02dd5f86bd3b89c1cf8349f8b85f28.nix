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
      identifier = { name = "witness"; version = "0.6.2"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2017-2022 Ashley Yakeley";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/AshleyYakeley/witness";
      url = "";
      synopsis = "values that witness types";
      description = "A /witness/ is a value that witnesses some sort of constraint on some list of type variables. This library provides support for a wide variety of witness types. It also provides classes for /representatives/, which are values that represent types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."countable" or (errorHandler.buildDepError "countable"))
        ];
        buildable = true;
      };
    };
  }