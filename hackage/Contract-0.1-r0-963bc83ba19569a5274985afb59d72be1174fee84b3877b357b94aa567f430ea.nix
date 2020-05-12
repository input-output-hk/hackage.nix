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
      specVersion = "1.8";
      identifier = { name = "Contract"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "O.Chitil@kent.ac.uk";
      author = "Olaf Chitil";
      homepage = "http://www.cs.kent.ac.uk/~oc/contracts.html";
      url = "";
      synopsis = "Practical typed lazy contracts. ";
      description = "Contracts describe properties of expressions (esp. functions) that are\nchecked at run-time.\nFor example, a contract states that an expression is a natural number,\na list has at least one element or a function requires a natural number\nand a non-empty list of natural numbers as arguments and will produce a\nnatural number as result.\nThus these properties are both documented and enforced.\nContracts are more expressive than static types.\nIf a contract is violated, then an informative exception is raised.\nSee homepage or Olaf Chitil: \"Practical Typed Lazy Contracts\", ICFP 2012, ACM.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }