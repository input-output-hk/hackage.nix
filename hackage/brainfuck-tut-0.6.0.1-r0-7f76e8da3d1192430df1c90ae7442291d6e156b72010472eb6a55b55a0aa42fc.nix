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
      specVersion = "1.18";
      identifier = { name = "brainfuck-tut"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Alejandro Cabrera";
      maintainer = "cpp.cabrera@gmail.com";
      author = "Alejandro Cabrera";
      homepage = "https://gitlab.com/cpp.cabrera/brainfuck-tut";
      url = "";
      synopsis = "A simple BF interpreter.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        buildable = true;
      };
      exes = {
        "bfh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."brainfuck-tut" or (errorHandler.buildDepError "brainfuck-tut"))
          ];
          buildable = true;
        };
      };
    };
  }