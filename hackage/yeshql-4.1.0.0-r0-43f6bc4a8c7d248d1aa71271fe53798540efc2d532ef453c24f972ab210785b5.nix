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
      identifier = { name = "yeshql"; version = "4.1.0.0"; };
      license = "MIT";
      copyright = "2015-2017 Tobias Dammers and contributors";
      maintainer = "tdammers@gmail.com";
      author = "Tobias Dammers";
      homepage = "https://github.com/tdammers/yeshql";
      url = "";
      synopsis = "YesQL-style SQL database abstraction (legacy compatibility wrapper)";
      description = "Use quasi-quotations or TemplateHaskell to write SQL in SQL, while\nadding type annotations to turn SQL into well-typed Haskell\nfunctions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."yeshql-core" or (errorHandler.buildDepError "yeshql-core"))
          (hsPkgs."yeshql-hdbc" or (errorHandler.buildDepError "yeshql-hdbc"))
        ];
        buildable = true;
      };
    };
  }