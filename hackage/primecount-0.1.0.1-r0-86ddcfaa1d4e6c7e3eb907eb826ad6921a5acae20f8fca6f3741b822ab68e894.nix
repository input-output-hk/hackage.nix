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
      specVersion = "2.2";
      identifier = { name = "primecount"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2021 Preetham Gujjula";
      maintainer = "libraries@mail.preetham.io";
      author = "Preetham Gujjula";
      homepage = "https://github.com/pgujjula/primecount-haskell#readme";
      url = "";
      synopsis = "Bindings to the primecount library";
      description = "Please see the README on Github at <https://github.com/pgujjula/primecount-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [
          (pkgs."primecount" or (errorHandler.sysDepError "primecount"))
        ];
        buildable = true;
      };
      tests = {
        "primecount-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primecount" or (errorHandler.buildDepError "primecount"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "primecount-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primecount" or (errorHandler.buildDepError "primecount"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }