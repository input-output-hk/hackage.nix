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
      identifier = { name = "posable"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Rick van Hoef <hackage@rickvanhoef.nl>";
      author = "Rick van Hoef";
      homepage = "https://github.com/Riscky/posable";
      url = "";
      synopsis = "A product-of-sums generics library";
      description = "A generics library that represents a non-recursive Haskell 98\ndatatype as a product-of-sums. Each type is represented\nwith a single tag, and a product of sums of fields. The tag\nrepresents all constructor choices in the type, the fields\ncontain all the values in the type. This representation\nmaps easily to a struct of unions, which is a\nmemory-efficient way to store sum datatypes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."finite-typelits" or (errorHandler.buildDepError "finite-typelits"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
        ];
        buildable = true;
      };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs."posable" or (errorHandler.buildDepError "posable"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }