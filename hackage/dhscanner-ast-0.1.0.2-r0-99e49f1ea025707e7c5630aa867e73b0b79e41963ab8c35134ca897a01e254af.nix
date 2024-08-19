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
      identifier = { name = "dhscanner-ast"; version = "0.1.0.2"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2024 Oren Ish Shalom";
      maintainer = "Oren Ish Shalom";
      author = "OrenGitHub";
      homepage = "https://github.com/OrenGitHub/dhscanner";
      url = "";
      synopsis = "abstract syntax tree for multiple programming languages";
      description = "The [abstract ayntax tree](https://en.wikipedia.org/wiki/Abstract_syntax_tree) (ast)\naims to be a data structure able to represent /multiple/ abstract syntax trees from\n/various/ programming languages. Its main purpose is to serve as the first step for /static code analysis/,\nas part of the [dhscanner](https://github.com/OrenGitHub/dhscanner) framework\nfor CI/CD container security checks. As part of that framework,\nit targets mostly languages used for /cloud native applications/:\n__Python__, __Ruby__, __Php__, __Javascript__, __Typescript__, __Java__ and __Golang__.\nTypically, a file is first parsed with the corresponding native parser of the language it's written in\n(see [Python's native parser](https://docs.python.org/3/library/ast.html) for example).\nThe native ast is then dumped (as JSON, or plain text)\nand sent to a [Happy](https://haskell-happy.readthedocs.io/en/latest/) +\n[Alex](https://haskell-alex.readthedocs.io/en/latest/) Haskell parser\nwhich accommodates the natively parsed content into the ast.\nGeared towards static code analysis, the ast design abstracts away details that are normally ignored anyway.\nFor example, it does not distinguish between __try__ and __catch__ blocks,\nand models both of them as plain sequential code blocks. Every file has exactly one ast that represents it.\nNon Haskell parogrammers note: The ast is /immutable/ (like everything else in Haskell ...)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      tests = {
        "dhscanner-ast-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhscanner-ast" or (errorHandler.buildDepError "dhscanner-ast"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
          ];
          buildable = true;
        };
      };
    };
  }