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
      identifier = { name = "multicurryable"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz";
      homepage = "";
      url = "";
      synopsis = "Uncurry functions with multiple arguments.";
      description = "This library provides a version of \"uncurry\" which takes a\nfunction of multiple arguments and stores the arguments into an n-ary product\nfrom \"sop-core\". The first non-function type encountered in the signature is \nconsidered the \"end of the function\".\n\nThis library also provides a way of reassociating a sequence of nested Eithers,\nso that the innermost Rigth value floats to the top-level Right branch.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          ];
        buildable = true;
        };
      tests = {
        "multicurryable-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."multicurryable" or (errorHandler.buildDepError "multicurryable"))
            ];
          buildable = true;
          };
        };
      };
    }