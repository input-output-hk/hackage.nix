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
      identifier = { name = "oalg-base"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Erich Gut";
      maintainer = "zerich.gut@gmail.com";
      author = "Erich.Gut";
      homepage = "https://github.com/zErichGut/oalg-main#readme";
      url = "";
      synopsis = "Algebraic structures on oriented entities and limits as a tool kit to solve algebraic problems.";
      description = "A package for solving algebraic problems purely written in Haskell.\n\nFirst of all we define [entities](\"OAlg.Entity.Definition\"). Based on them and since we look at algebra through the lens of categories, we define [oriented](\"OAlg.Structure.Oriented.Definition\") structures on which, by means of a suitable __partially__ defined multiplication, [multiplicative](\"OAlg.Structure.Multiplicative.Definition\") structures are defined. If one provides such a multiplicative structure with a matching [additive](\"OAlg.Structure.Additive.Definition\") structure, one obtains [distributive](\"OAlg.Structure.Distributive.Definition\") structures on which [matrices](\"OAlg.Entity.Matrix.Definition\") are build. If an additive structure is provided with a matching scalar multiplication, [vectorial](\"OAlg.Structure.Vectorial.Definition\") structures are obtained, which then form the basis for [algebraic](\"OAlg.Structure.Algebraic.Definition\") structures together with the distributive structures.\n\n[Limits](\"OAlg.Limes.Limits\") - in context of categories - serve as a backbone for solving algebraic problems, e. g. finding all solutions of the equation @a * x == 0@ is given by the [kernel](\"OAlg.Limes.KernelsAndCokernels\") of @a@.\n\nParticular attention is paid to the [duality](\"OAlg.Data.Dualisable\") of concepts - viewed through the lens of categories - so that the implementation of the dual concept could be traced back to the original one to avoid duplicate or redundant implementation efforts.\n\nA central feature in this package is that all functions defined here - unless otherwise stated - are __total__ and means /if the input values are [valid](\"OAlg.Data.Validable\") then the resulting value is also valid/. Most functions do not check their preconditions. Therefore, all data structures defined here are provided with a __property__ section that is translated into a corresponding [statement](\"OAlg.Data.Statement.Definition\") so that they can be [validated](\"OAlg.Control.Validate\") as needed. If there is an exception to this rule - such as for partially defined algebraic operators - the rule is extended by /if the input values are valid and fulfill the additional required properties, the resulting value is also valid/. Most of the algebraic operators do check the additional required preconditions.\n\nSince the algebraic operators - such as @(*)@, @(+)@, @(.)@ ... - have been redefined here, one should exclude the standard @Prelude@ when using this package, to avoid ambiguity, and use the [@Prelude@](\"OAlg.Prelude\") provided here.\n\nThroughout the descripitions in this package we denote type variables in lower case bold letters to distinguishing them from variables for values of a type.\n\nSince we take the view that a value of a data structure or an instance of a class must strictly fulfill the required properties to be valid, @Double@, for example, has not been implemented as a numerical type.\n\nPlease see also the README on GitHub at <https://github.com/zErichGut/oalg-main/blob/main/oalg-base/README.md>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
      tests = {
        "oalg-base-test" = {
          depends = [
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."oalg-base" or (errorHandler.buildDepError "oalg-base"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }