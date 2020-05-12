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
      identifier = { name = "mysql-haskell"; version = "0.8.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Winterland";
      maintainer = "winterland1989@gmail.com";
      author = "winterland1989";
      homepage = "https://github.com/winterland1989/mysql-haskell";
      url = "";
      synopsis = "pure haskell MySQL driver";
      description = "pure haskell MySQL driver";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monad-loops" or (errorHandler.buildDepError "monad-loops"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
          (hsPkgs."tcp-streams" or (errorHandler.buildDepError "tcp-streams"))
          (hsPkgs."wire-streams" or (errorHandler.buildDepError "wire-streams"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."binary-ieee754" or (errorHandler.buildDepError "binary-ieee754"))
          (hsPkgs."binary-parsers" or (errorHandler.buildDepError "binary-parsers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."bytestring-lexing" or (errorHandler.buildDepError "bytestring-lexing"))
          (hsPkgs."blaze-textual" or (errorHandler.buildDepError "blaze-textual"))
          (hsPkgs."word24" or (errorHandler.buildDepError "word24"))
          (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."mysql-haskell" or (errorHandler.buildDepError "mysql-haskell"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."io-streams" or (errorHandler.buildDepError "io-streams"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }