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
      identifier = { name = "stack-yaml"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "J Mitchell (jacob.mitchell@iohk.io)";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox 2017, adapted from J Mitchell (jacob.mitchell@iohk.io)";
      homepage = "https://github.com/phlummox/stack-yaml";
      url = "";
      synopsis = "Parse a stack.yaml file";
      description = "stack-yaml parses a \"stack.yaml\" file, as used by stack,\nand returns a simple data structure containing\nits configuration data.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
        ];
        buildable = true;
      };
      tests = {
        "hup-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stack-yaml" or (errorHandler.buildDepError "stack-yaml"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
          ];
          buildable = true;
        };
      };
    };
  }