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
      identifier = { name = "breakpoint"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "aaronallen8455@gmail.com";
      author = "Aaron Allen";
      homepage = "";
      url = "";
      synopsis = "Set breakpoints using a GHC plugin";
      description = "A plugin that allows you to set breakpoints for debugging purposes.\n\nSee the [README](https://github.com/aaronallen8455/breakpoint#breakpoint) for details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."breakpoint" or (errorHandler.buildDepError "breakpoint"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
          buildable = true;
        };
      };
    };
  }