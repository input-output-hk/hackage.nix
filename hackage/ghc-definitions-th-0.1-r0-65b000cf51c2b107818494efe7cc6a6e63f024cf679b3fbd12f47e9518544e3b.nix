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
      identifier = { name = "ghc-definitions-th"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2021 Anthony Vandikas";
      maintainer = "yellpika@gmail.com";
      author = "Anthony Vandikas";
      homepage = "https://github.com/YellPika/ghc-definitions-th";
      url = "";
      synopsis = "Automatically generate GHC API counterparts to Haskell\ndeclarations.";
      description = "Template Haskell functions for automatically generating\ndefinitions for @TyCon@s, @Var@s, and @DataCon@s of known\ntype constructors, functions, and data constructors.\nPrimarily intended for the development of type checker\nplugins.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }