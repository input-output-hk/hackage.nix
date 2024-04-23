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
      identifier = { name = "rpc-framework"; version = "2.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mmirman@andrew.cmu.edu";
      author = "Matthew Mirman";
      homepage = "http://github.com/mmirman/rpc-framework";
      url = "";
      synopsis = "a remote procedure call framework";
      description = "A library and framework for making remote procedure calls in haskell easy and typesafe.\n\nSee <http://github.com/mmirman/rpc-framework> for more information.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
        ];
        buildable = true;
      };
      exes = {
        "rpc-test" = {
          depends = [
            (hsPkgs."rpc-framework" or (errorHandler.buildDepError "rpc-framework"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = true;
        };
      };
    };
  }