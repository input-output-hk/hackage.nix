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
      identifier = { name = "distributed-fork"; version = "0.0.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Utku Demir";
      maintainer = "Utku Demir <me@utdemir.com>";
      author = "Utku Demir";
      homepage = "https://github.com/utdemir/distributed-fork";
      url = "";
      synopsis = "Like 'forkIO', but uses remote machines instead of local threads.";
      description = "This library provides a way to offload a computation to another machine.\n\nIt uses pluggable 'Backend''s to spawn remote executors. It currently only supports AWS Lambda using <http://hackage.haskell.org/package/distributed-fork-aws-lambda distributed-fork-aws-lambda> library.\n\nSee <https://github.com/utdemir/distributed-fork README> for the rationale behind the library and \"Control.Distributed.Fork\" module for the usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."distributed-closure" or (errorHandler.buildDepError "distributed-closure"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."distributed-fork" or (errorHandler.buildDepError "distributed-fork"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }