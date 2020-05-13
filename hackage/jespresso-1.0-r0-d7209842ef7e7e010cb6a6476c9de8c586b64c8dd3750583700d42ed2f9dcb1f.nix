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
      identifier = { name = "jespresso"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2014 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/jespresso";
      url = "";
      synopsis = "Extract all JavaScript from an HTML page and consolidate it in one script.";
      description = "Allows extraction and consolidation of JavaScript code in an HTML page so that it behaves like the original. Consolidation is a process of transforming an HTML page into an equivalent, but containing JavaScript code only in one inlined script tag.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-tagsoup" or (errorHandler.buildDepError "hxt-tagsoup"))
          (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."language-ecmascript" or (errorHandler.buildDepError "language-ecmascript"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."http-encodings" or (errorHandler.buildDepError "http-encodings"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
          ];
        buildable = true;
        };
      exes = {
        "jespresso" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jespresso" or (errorHandler.buildDepError "jespresso"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ];
          buildable = true;
          };
        };
      tests = {
        "unittest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."jespresso" or (errorHandler.buildDepError "jespresso"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
            (hsPkgs."arrows" or (errorHandler.buildDepError "arrows"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }