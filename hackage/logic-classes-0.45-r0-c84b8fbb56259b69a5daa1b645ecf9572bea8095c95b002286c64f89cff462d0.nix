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
      specVersion = "1.2";
      identifier = { name = "logic-classes"; version = "0.45"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "SeeReason Partners <partners@seereason.com>";
      author = "David Fox <dsf@seereason.com>";
      homepage = "";
      url = "";
      synopsis = "Support for propositional and first order logic, normal forms, and a resolution theorem prover.";
      description = "Package to support Propositional and First Order Logic.  It includes classes\nrepresenting the different types of formulas and terms, some instances of\nthose classes for types used in other logic libraries, and implementations of\nseveral logic algorithms, including conversion to normal form and a simple\nresolution-based theorem prover for any instance of FirstOrderFormula.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."happstack-data" or (errorHandler.buildDepError "happstack-data"))
          (hsPkgs."incremental-sat-solver" or (errorHandler.buildDepError "incremental-sat-solver"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb-with-class" or (errorHandler.buildDepError "syb-with-class"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."PropLogic" or (errorHandler.buildDepError "PropLogic"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."set-extra" or (errorHandler.buildDepError "set-extra"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      exes = {
        "tests" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            ];
          buildable = true;
          };
        };
      };
    }