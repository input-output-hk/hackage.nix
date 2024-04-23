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
      identifier = { name = "microc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "god.be.with.ye.fs@gmail.com";
      author = "hurou927";
      homepage = "https://github.com/hurou927/microc-haskell#readme";
      url = "";
      synopsis = "microc compiler";
      description = "microc compiler(stdin->stdout)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "microc-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."microc" or (errorHandler.buildDepError "microc"))
          ];
          buildable = true;
        };
      };
      tests = {
        "microc-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."microc" or (errorHandler.buildDepError "microc"))
          ];
          buildable = true;
        };
      };
    };
  }