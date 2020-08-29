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
      identifier = { name = "zenacy-unicode"; version = "1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2015-2020 Michael P Williams";
      maintainer = "Michael Williams <mlcfp@icloud.com>";
      author = "Michael Williams <mlcfp@icloud.com>";
      homepage = "https://github.com/mlcfp/zenacy-unicode";
      url = "";
      synopsis = "Unicode utilities for Haskell";
      description = "Zenacy Unicode includes tools for checking byte order marks (BOM) and\ncleaning data to remove invalid bytes.  These tools can help ensure that\ndata pulled from the web can be parsed and converted to text.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ];
        buildable = true;
        };
      tests = {
        "zenacy-unicode-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."zenacy-unicode" or (errorHandler.buildDepError "zenacy-unicode"))
            ];
          buildable = true;
          };
        };
      };
    }