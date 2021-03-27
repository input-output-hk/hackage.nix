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
      specVersion = "1.12";
      identifier = { name = "apply-unordered"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Michael Sloan";
      maintainer = "mgsloan@gmail.com";
      author = "Michael Sloan";
      homepage = "https://github.com/mgsloan/apply-unordered#readme";
      url = "";
      synopsis = "Apply a function to an argument specified by a type level Nat";
      description = "Please see the README on GitHub at <https://github.com/mgsloan/apply-unordered#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          ];
        buildable = true;
        };
      tests = {
        "apply-positional-test" = {
          depends = [
            (hsPkgs."apply-unordered" or (errorHandler.buildDepError "apply-unordered"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fin" or (errorHandler.buildDepError "fin"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-tcplugins-extra" or (errorHandler.buildDepError "ghc-tcplugins-extra"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."should-not-typecheck" or (errorHandler.buildDepError "should-not-typecheck"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }