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
      specVersion = "3.0";
      identifier = { name = "typed-process-effectful"; version = "1.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hackage+typed-process-effectful@with-h.at";
      author = "Dominik Peteler";
      homepage = "https://github.com/haskell-effectful/typed-process-effectful#readme";
      url = "";
      synopsis = "A binding of the typed-process library for the effectful effect system.";
      description = "This library provides an alternative `Process` effect for the\n[effectful](https://github.com/haskell-effectful/effectful) ecosystem.\nWhile to the `Process` effect shipped with the `effectful` library is based on\nthe [process](https://hackage.haskell.org/package/process) package this\nimplementation relies on\n[typed-process](https://hackage.haskell.org/package/typed-process) instead.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
          (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
        ];
        buildable = true;
      };
      tests = {
        "typed-process-effectful-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."effectful" or (errorHandler.buildDepError "effectful"))
            (hsPkgs."effectful-core" or (errorHandler.buildDepError "effectful-core"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."typed-process-effectful" or (errorHandler.buildDepError "typed-process-effectful"))
          ];
          buildable = true;
        };
      };
    };
  }