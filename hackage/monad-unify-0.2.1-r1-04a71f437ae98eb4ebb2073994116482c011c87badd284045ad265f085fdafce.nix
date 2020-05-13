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
      identifier = { name = "monad-unify"; version = "0.2.1"; };
      license = "MIT";
      copyright = "(c) Phil Freeman 2013";
      maintainer = "Phil Freeman <paf31@cantab.net>";
      author = "Phil Freeman";
      homepage = "";
      url = "";
      synopsis = "Generic first-order unification";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }