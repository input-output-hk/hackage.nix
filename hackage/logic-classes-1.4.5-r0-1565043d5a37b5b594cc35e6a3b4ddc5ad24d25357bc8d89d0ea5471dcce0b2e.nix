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
      identifier = { name = "logic-classes"; version = "1.4.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SeeReason Partners <partners@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "http://src.seereason.com/logic-classes";
      url = "";
      synopsis = "Framework for propositional and first order logic, theorem proving";
      description = "Package to support Propositional and First Order Logic.  It includes classes\nrepresenting the different types of formulas and terms, some instances of\nthose classes for types used in other logic libraries, and implementations of\nseveral logic algorithms, including conversion to normal form and a simple\nresolution-based theorem prover for any instance of FirstOrderFormula.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."incremental-sat-solver" or (errorHandler.buildDepError "incremental-sat-solver"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."PropLogic" or (errorHandler.buildDepError "PropLogic"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "tests" = {
          depends = [
            (hsPkgs."applicative-extras" or (errorHandler.buildDepError "applicative-extras"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."incremental-sat-solver" or (errorHandler.buildDepError "incremental-sat-solver"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."PropLogic" or (errorHandler.buildDepError "PropLogic"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }