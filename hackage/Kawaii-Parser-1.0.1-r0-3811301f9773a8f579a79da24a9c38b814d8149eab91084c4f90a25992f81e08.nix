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
      identifier = { name = "Kawaii-Parser"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liisikerik@hotmail.com";
      author = "Liisi Kerik";
      homepage = "https://github.com/liisikerik/kawaii_parser";
      url = "";
      synopsis = "A simple parsing library.";
      description = "This library provides a simple tokeniser and parser. Its main focus is not efficiency but simplicity of implementation and\nuse. The choice operator for parsers is symmetric, avoiding the need to think about the order in which the alternatives are\nlisted. The library supports adding locations to the parse tree and aims to provide reasonably detailed information about\nparse errors with minimal user involvement. It also contains a module with type synonyms for some compositions of monad\ntransformers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }