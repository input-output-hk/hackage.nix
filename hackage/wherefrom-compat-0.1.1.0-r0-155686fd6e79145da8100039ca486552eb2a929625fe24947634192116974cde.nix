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
      identifier = { name = "wherefrom-compat"; version = "0.1.1.0"; };
      license = "BSD-2-Clause";
      copyright = "The wherefrom-compat contributors";
      maintainer = "teofilcamarasu@gmail.com";
      author = "Teo Camarasu";
      homepage = "";
      url = "";
      synopsis = "A compatibility layer for GHC's 'wherefrom' function";
      description = "A compatibility layer for GHC's 'wherefrom' function,\nwhich exposes info provenance information.\nEach major version of this library exports \na different version of this interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."wherefrom-compat" or (errorHandler.buildDepError "wherefrom-compat"))
            ];
          buildable = true;
          };
        };
      };
    }