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
      specVersion = "1.12";
      identifier = { name = "variadic-function"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 Boris Lykah";
      maintainer = "lykahb@gmail.com";
      author = "Boris Lykah";
      homepage = "https://github.com/lykahb/variadic-function#readme";
      url = "";
      synopsis = "Create and transform functions with variable arity.";
      description = "Please see the README on GitHub at <https://github.com/lykahb/variadic-function#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "variadic-function-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."variadic-function" or (errorHandler.buildDepError "variadic-function"))
            ];
          buildable = true;
          };
        };
      };
    }