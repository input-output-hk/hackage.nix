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
      identifier = { name = "open-witness"; version = "0.6"; };
      license = "BSD-2-Clause";
      copyright = "(c) 2017-2022 Ashley Yakeley";
      maintainer = "<ashley@semantic.org>";
      author = "Ashley Yakeley";
      homepage = "https://github.com/AshleyYakeley/open-witness";
      url = "";
      synopsis = "open witnesses";
      description = "Open witnesses are witnesses that can witness to any type. However, they cannot be constructed, they can only be generated in the IO monad. See the 2008 draft paper /Witnesses and Open Witnesses/ (<https://semantic.org/wp-content/uploads/Open-Witnesses.pdf>).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."witness" or (errorHandler.buildDepError "witness"))
        ];
        buildable = true;
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."open-witness" or (errorHandler.buildDepError "open-witness"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."witness" or (errorHandler.buildDepError "witness"))
          ];
          buildable = true;
        };
      };
    };
  }