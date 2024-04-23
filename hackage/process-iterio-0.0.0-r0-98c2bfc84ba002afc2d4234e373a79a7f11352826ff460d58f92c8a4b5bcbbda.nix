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
      identifier = { name = "process-iterio"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Fitzgerald <garious@gmail.com>";
      author = "Greg Fitzgerald <garious@gmail.com>";
      homepage = "https://github.com/garious/process-iterio";
      url = "";
      synopsis = "IterIO Process Library";
      description = "IterIO combinators for the Process library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."iterIO" or (errorHandler.buildDepError "iterIO"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
        ];
        buildable = true;
      };
      tests = {
        "Test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."iterIO" or (errorHandler.buildDepError "iterIO"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          ];
          buildable = true;
        };
      };
    };
  }