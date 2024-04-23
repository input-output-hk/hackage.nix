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
      identifier = { name = "parse"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Jacob Lagares Pozo";
      maintainer = "jlagarespo@protonmail.com";
      author = "Jacob Lagares Pozo";
      homepage = "https://github.com/jlagarespo/parse#readme";
      url = "";
      synopsis = "Simple way to parse strings with Python-like format strings.";
      description = "Please refer to the README file that ships with this package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "parse-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parse" or (errorHandler.buildDepError "parse"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
    };
  }