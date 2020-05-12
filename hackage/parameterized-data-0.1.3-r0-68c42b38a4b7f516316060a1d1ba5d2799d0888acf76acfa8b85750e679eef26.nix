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
      identifier = { name = "parameterized-data"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008 Alfonso Acosta, Oleg Kiselyov, Wolfgang Jeltsch\nand KTH's SAM group";
      maintainer = "alfonso.acosta@gmail.com";
      author = "Alfonso Acosta";
      homepage = "http://code.haskell.org/parameterized-data";
      url = "http://code.haskell.org/parameterized-data";
      synopsis = "Parameterized data library implementing lightweight dependent\ntypes";
      description = "This library provides an implementation of parameterized types using\ntype-level computations to implement the type parameters and emulate\ndependent types.\nRight now only fixed-sized vectors are provided. A tutorial on how to use them can be found at <http://www.ict.kth.se/org/ict/ecs/sam/projects/forsyde/www/files/tutorial/tutorial.html#FSVec>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."type-level" or (errorHandler.buildDepError "type-level"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }