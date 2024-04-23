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
      specVersion = "1.6";
      identifier = { name = "hint-server"; version = "1.4.2"; };
      license = "BSD-3-Clause";
      copyright = "2009 Fernando \"Brujo\" Benavides";
      maintainer = "corentin.dupont@gmail.com";
      author = "Fernando \"Brujo\" Benavides";
      homepage = "";
      url = "";
      synopsis = "A server process that runs hint.";
      description = "This library provides a server process (implemented using eprocess) that can receive and run actions in the Interpreter monad.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."hint" or (errorHandler.buildDepError "hint"))
          (hsPkgs."eprocess" or (errorHandler.buildDepError "eprocess"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
        ];
        buildable = true;
      };
    };
  }