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
      identifier = { name = "sized-vector"; version = "1.4.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) Hiromi ISHII 2013-2016";
      maintainer = "konn.jinro_at_gmail.com";
      author = "Hiromi ISHII";
      homepage = "https://github.com/konn/sized-vector";
      url = "";
      synopsis = "Size-parameterized vector types and functions.";
      description = "Size-parameterized vector types and functions using a data-type promotion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."equational-reasoning" or (errorHandler.buildDepError "equational-reasoning"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."monomorphic" or (errorHandler.buildDepError "monomorphic"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."type-natural" or (errorHandler.buildDepError "type-natural"))
          ] ++ [
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }