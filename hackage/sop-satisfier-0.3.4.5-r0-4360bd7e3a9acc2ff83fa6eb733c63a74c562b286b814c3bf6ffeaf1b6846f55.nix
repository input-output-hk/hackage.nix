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
      specVersion = "3.0";
      identifier = { name = "sop-satisfier"; version = "0.3.4.5"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "QBayLogic B.V. <devops@qbaylogic.com>";
      author = "Aleksandr Pokatilov <pokatilov0802@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Check satisfiability of expressions on natural numbers";
      description = "Expression satisfier on natural numbers.\n.\nIt can reason about expressions contatining\naddition and multiplication.\nIt also provides limited support of exponentiations and subtraction.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "system-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-satisfier" or (errorHandler.buildDepError "sop-satisfier"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }