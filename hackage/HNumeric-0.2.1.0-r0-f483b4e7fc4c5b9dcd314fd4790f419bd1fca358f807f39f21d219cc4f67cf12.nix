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
      identifier = { name = "HNumeric"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tae Geun Kim";
      maintainer = "edeftg@gmail.com";
      author = "Tae Geun Kim";
      homepage = "https://github.com/Axect/HNumeric#readme";
      url = "";
      synopsis = "Haskell Numeric Library with pure functionality, R & MATLAB Syntax.";
      description = "Please see the README on GitHub at <https://github.com/Axect/HNumeric#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
        ];
        buildable = true;
      };
      exes = {
        "HNumeric-exe" = {
          depends = [
            (hsPkgs."HNumeric" or (errorHandler.buildDepError "HNumeric"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          ];
          buildable = true;
        };
      };
      tests = {
        "HNumeric-test" = {
          depends = [
            (hsPkgs."HNumeric" or (errorHandler.buildDepError "HNumeric"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."normaldistribution" or (errorHandler.buildDepError "normaldistribution"))
          ];
          buildable = true;
        };
      };
    };
  }