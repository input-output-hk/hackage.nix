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
      identifier = { name = "type-reflection"; version = "1.0"; };
      license = "MIT";
      copyright = "Richard Eisenberg";
      maintainer = "rae@richarde.dev";
      author = "Richard Eisenberg";
      homepage = "https://github.com/goldfirere/type-reflection";
      url = "";
      synopsis = "Support functions to work with type representations.";
      description = "Support functions to work with type representations, as exported\nfrom \"Type.Reflection\". Of particular interest is a facility\nto translate 'TypeRep's into strings, with customizability around\nwhether the rendered strings are fully qualified.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."type-reflection" or (errorHandler.buildDepError "type-reflection"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }