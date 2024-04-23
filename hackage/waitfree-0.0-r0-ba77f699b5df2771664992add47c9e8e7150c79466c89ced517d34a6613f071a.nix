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
      identifier = { name = "waitfree"; version = "0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "yhirai@pira.jp";
      author = "Yoichi Hirai";
      homepage = "";
      url = "";
      synopsis = "A wrapping library for waitfree comnputation.";
      description = "A combinator library for asynchronous waitfree computation among forkIO threads.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }