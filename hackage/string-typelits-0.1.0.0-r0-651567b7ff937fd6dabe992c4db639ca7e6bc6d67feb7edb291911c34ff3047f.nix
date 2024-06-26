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
      identifier = { name = "string-typelits"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Kyle Carter, all rights reserved";
      maintainer = "kylcarte@indiana.edu";
      author = "Kyle Carter";
      homepage = "https://github.com/kylcarte/string-typelits";
      url = "";
      synopsis = "Type-level Chars and Strings, with decidable equality.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."type-combinators" or (errorHandler.buildDepError "type-combinators"))
          (hsPkgs."type-combinators-quote" or (errorHandler.buildDepError "type-combinators-quote"))
        ];
        buildable = true;
      };
    };
  }