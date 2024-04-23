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
    flags = { tests = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "spirv-reflect-yaml"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2022 IC Rainbow";
      maintainer = "ic.rbow@gmail.com";
      author = "IC Rainbow";
      homepage = "";
      url = "";
      synopsis = "YAML loader for spirv-reflect tool.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HsYAML" or (errorHandler.buildDepError "HsYAML"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."spirv-reflect-types" or (errorHandler.buildDepError "spirv-reflect-types"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spirv-reflect-yaml-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."spirv-reflect-yaml" or (errorHandler.buildDepError "spirv-reflect-yaml"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = if !flags.tests then false else true;
        };
      };
    };
  }