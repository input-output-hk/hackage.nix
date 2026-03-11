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
      specVersion = "3.8";
      identifier = { name = "ghc-stack-profiler-core"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hannes@well-typed.com";
      author = "Hannes Siebenhandl, Wen Kokke, Matthew Pickering";
      homepage = "";
      url = "";
      synopsis = "Thread sample types and serialisation logic for `ghc-stack-profiler`.";
      description = "Thread sample types and serialisation logic for `ghc-stack-profiler`.\nDefines the interface and serialisation logic to turn an RTS Callstack into a binary message suitable for the eventlog.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
    };
  }