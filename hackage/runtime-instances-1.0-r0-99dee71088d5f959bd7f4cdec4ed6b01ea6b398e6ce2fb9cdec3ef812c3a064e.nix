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
      specVersion = "2.4";
      identifier = { name = "runtime-instances"; version = "1.0"; };
      license = "MIT";
      copyright = "Richard Eisenberg";
      maintainer = "rae@richarde.dev";
      author = "Richard Eisenberg";
      homepage = "https://github.com/goldfirere/runtime-instances";
      url = "";
      synopsis = "Look up class instances at runtime.";
      description = "This package allows clients to build a database of class instances,\nqueryable at runtime. Accordingly, this allows runtime class instance\nlookup. Template Haskell utility functions are provided for creating\nthe instance database from the set of instances in scope at a given\npoint in your program.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."type-reflection" or (errorHandler.buildDepError "type-reflection"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-utilities" or (errorHandler.buildDepError "th-utilities"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."runtime-instances" or (errorHandler.buildDepError "runtime-instances"))
            (hsPkgs."type-reflection" or (errorHandler.buildDepError "type-reflection"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }