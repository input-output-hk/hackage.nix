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
      identifier = { name = "haskell-exp-parser"; version = "0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, 2020, Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/haskell-exp-parser";
      url = "";
      synopsis = "Simple parser parser from Haskell to TemplateHaskell expressions";
      description = "This package defines a simple parser for a subset of Haskell expressions and patterns to the TemplateHaskell AST.\n\nIt provides a very lightweight alternative to the functions @parseExp@ and @parsePat@ from <http://hackage.haskell.org/package/haskell-src-meta>.\n\nThe following expressions are currently supported:\n\n* Variables\n\n* Integer and string literals\n\n* Prefix function application\n\n* Lists and tuples\n\nThe following patterns are currently supported:\n\n* Variables";
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
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-exp-parser" or (errorHandler.buildDepError "haskell-exp-parser"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }