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
      specVersion = "3.8";
      identifier = { name = "Kawaii-Parser"; version = "3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liisikerik@hotmail.com";
      author = "Liisi Kerik";
      homepage = "";
      url = "";
      synopsis = "A simple parsing library and some additional utilities.";
      description = "The library provides a tiny general utilities module, and a simple combinator-based tokeniser and parser. Its main focus is\nnot efficiency but simplicity of implementation and use. The choice operator for parsers is symmetric, avoiding the need to\nthink about the order in which the alternatives are listed. The library provides error locations and supports adding locations\nto the parse tree.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."generic-lens" or (errorHandler.buildDepError "generic-lens"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }