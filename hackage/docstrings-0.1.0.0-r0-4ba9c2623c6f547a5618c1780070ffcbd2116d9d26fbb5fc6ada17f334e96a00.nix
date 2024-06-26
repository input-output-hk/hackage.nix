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
      identifier = { name = "docstrings"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2017 Dai";
      maintainer = "dailectic@gmail.com";
      author = "Dai";
      homepage = "https://github.com/daig/docstrings#readme";
      url = "";
      synopsis = "Docstrings for documentation in the repl";
      description = "This package provides <https://en.wikipedia.org/wiki/Docstring docstring> funcionality similar to Python or Lisp.\nDocstrings are simply strings bound to identifier names.\nTo get access to a name one must enable @-XTemplateHaskell@ and use\nprime notation like @'myValIdentifier@ and @''MyTypeIdentifier@.\nAccess Docstrings in the repl via @help 'myIdentifier@,\nand introduce Docstrings via @docstring 'myIdentifier \"some documentation\"@ in a module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."heredoc" or (errorHandler.buildDepError "heredoc"))
        ];
        buildable = true;
      };
    };
  }