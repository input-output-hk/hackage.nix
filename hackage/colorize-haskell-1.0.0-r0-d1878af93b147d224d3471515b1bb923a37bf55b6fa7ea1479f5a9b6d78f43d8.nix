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
      identifier = { name = "colorize-haskell"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/hscolor";
      url = "";
      synopsis = "Highligt Haskell source";
      description = "TODO";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "hscolor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-lexer" or (errorHandler.buildDepError "haskell-lexer"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            ];
          buildable = true;
          };
        };
      };
    }