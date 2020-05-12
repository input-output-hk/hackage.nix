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
      identifier = { name = "stm-chunked-queues"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Alexander Kondratskiy";
      maintainer = "Alexander Kondratskiy <kholdstare0.0@gmail.com>";
      author = "Alexander Kondratskiy";
      homepage = "http://github.com/kholdstare/stm-chunked-queues/";
      url = "";
      synopsis = "Chunked Communication Queues";
      description = "Thread communication queues that group items/requests that occur close together in time";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          ];
        buildable = true;
        };
      tests = {
        "UnitTests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }