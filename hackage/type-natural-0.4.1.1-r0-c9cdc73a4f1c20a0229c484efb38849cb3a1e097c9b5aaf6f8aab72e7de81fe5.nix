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
      identifier = { name = "type-natural"; version = "0.4.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013-2014";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/type-natural";
      url = "";
      synopsis = "Type-level natural and proofs of their properties.";
      description = "Type-level natural numbers and proofs of their properties.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-presburger" or (errorHandler.buildDepError "ghc-typelits-presburger"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
        ];
        buildable = true;
      };
    };
  }