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
    flags = { lib-werror = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "serversession-frontend-snap"; version = "1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/yesodweb/serversession";
      url = "";
      synopsis = "Snap bindings for serversession.";
      description = "API docs and the README are available at <http://www.stackage.org/package/serversession-frontend-snap>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."nonce" or (errorHandler.buildDepError "nonce"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."snap" or (errorHandler.buildDepError "snap"))
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."serversession" or (errorHandler.buildDepError "serversession"))
          ];
        buildable = true;
        };
      };
    }