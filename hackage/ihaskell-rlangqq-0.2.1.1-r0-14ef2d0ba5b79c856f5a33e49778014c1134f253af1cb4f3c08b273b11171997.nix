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
      identifier = { name = "ihaskell-rlangqq"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Adam Vogt <vogt.adam@gmail.com>";
      author = "Adam Vogt <vogt.adam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "a rDisp quasiquote to show plots from Rlang-QQ in IHaskell ";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."Rlang-QQ" or (errorHandler.buildDepError "Rlang-QQ"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."ihaskell" or (errorHandler.buildDepError "ihaskell"))
          (hsPkgs."ihaskell-blaze" or (errorHandler.buildDepError "ihaskell-blaze"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."xformat" or (errorHandler.buildDepError "xformat"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }