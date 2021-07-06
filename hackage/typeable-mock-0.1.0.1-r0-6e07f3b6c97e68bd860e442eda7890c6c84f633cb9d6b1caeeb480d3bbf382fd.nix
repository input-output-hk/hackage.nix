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
      identifier = { name = "typeable-mock"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Boris Lykah";
      maintainer = "lykahb@gmail.com";
      author = "Boris Lykah";
      homepage = "https://github.com/lykahb/typeable-mock#readme";
      url = "";
      synopsis = "Mock functions and expressions anywhere.";
      description = "Please see the README on GitHub at <https://github.com/lykahb/typeable-mock#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."variadic-function" or (errorHandler.buildDepError "variadic-function"))
          ];
        buildable = true;
        };
      tests = {
        "typeable-mock-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."call-stack" or (errorHandler.buildDepError "call-stack"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."typeable-mock" or (errorHandler.buildDepError "typeable-mock"))
            (hsPkgs."variadic-function" or (errorHandler.buildDepError "variadic-function"))
            ];
          buildable = true;
          };
        };
      };
    }