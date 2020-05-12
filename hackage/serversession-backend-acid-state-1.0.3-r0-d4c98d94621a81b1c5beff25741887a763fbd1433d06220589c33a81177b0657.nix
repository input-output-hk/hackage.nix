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
      specVersion = "1.8";
      identifier = {
        name = "serversession-backend-acid-state";
        version = "1.0.3";
        };
      license = "MIT";
      copyright = "";
      maintainer = "Felipe Lessa <felipe.lessa@gmail.com>";
      author = "Felipe Lessa <felipe.lessa@gmail.com>";
      homepage = "https://github.com/yesodweb/serversession";
      url = "";
      synopsis = "Storage backend for serversession using acid-state.";
      description = "API docs and the README are available at <http://www.stackage.org/package/serversession-backend-acid-state>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."serversession" or (errorHandler.buildDepError "serversession"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."serversession" or (errorHandler.buildDepError "serversession"))
            (hsPkgs."serversession-backend-acid-state" or (errorHandler.buildDepError "serversession-backend-acid-state"))
            ];
          buildable = true;
          };
        };
      };
    }