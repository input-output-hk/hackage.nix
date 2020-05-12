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
      identifier = { name = "users-persistent"; version = "0.5.0.2"; };
      license = "MIT";
      copyright = "(c) 2015 - 2016 Alexander Thiemann";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "Alexander Thiemann <mail@athiemann.net>";
      homepage = "https://github.com/agrafix/users";
      url = "";
      synopsis = "A persistent backend for the users package";
      description = "This library is a backend driver using <http://hackage.haskell.org/package/persistent persistent> for\n<http://hackage.haskell.org/package/users the \"users\" library>.\n\nThe package itself does not expose any bindings but provides an instance for 'UserStorageBackend'.\n\nUsage:\n\n> module Foo where\n> import Web.Users.Types\n> import Web.Users.Persistent\n> -- code goes here";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."persistent-template" or (errorHandler.buildDepError "persistent-template"))
          (hsPkgs."esqueleto" or (errorHandler.buildDepError "esqueleto"))
          (hsPkgs."users" or (errorHandler.buildDepError "users"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          ];
        buildable = true;
        };
      tests = {
        "users-persistent-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."persistent-sqlite" or (errorHandler.buildDepError "persistent-sqlite"))
            (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."users-persistent" or (errorHandler.buildDepError "users-persistent"))
            (hsPkgs."users-test" or (errorHandler.buildDepError "users-test"))
            ];
          buildable = true;
          };
        };
      };
    }