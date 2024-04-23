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
      identifier = { name = "ast-monad"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Masato Mouri";
      maintainer = "mkdagjp@gmail.com";
      author = "Masato Mouri";
      homepage = "https://github.com/mkdag/ast-monad#readme";
      url = "";
      synopsis = "A library for constructing AST by using do-notation";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "ast-monad-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ast-monad" or (errorHandler.buildDepError "ast-monad"))
          ];
          buildable = true;
        };
      };
    };
  }