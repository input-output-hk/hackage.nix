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
      identifier = { name = "regex-applicative"; version = "0.1.5"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/regex-applicative";
      url = "";
      synopsis = "Regex-based parsing with applicative interface";
      description = "regex-applicative is a Haskell library for parsing using regular expressions.\nParsers can be built using Applicative interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."monads-tf" or (errorHandler.buildDepError "monads-tf"))
        ];
        buildable = true;
      };
    };
  }