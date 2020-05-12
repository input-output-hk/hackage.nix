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
      identifier = { name = "rc"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Bogdan Penkovsky";
      maintainer = "dev () penkovsky dot com";
      author = "Bogdan Penkovsky";
      homepage = "https://github.com/masterdezign/rc#readme";
      url = "";
      synopsis = "Reservoir Computing, fast RNNs";
      description = "Please see the README on Github at <https://github.com/masterdezign/rc#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Learning" or (errorHandler.buildDepError "Learning"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."dde" or (errorHandler.buildDepError "dde"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      exes = {
        "ntc" = {
          depends = [
            (hsPkgs."Learning" or (errorHandler.buildDepError "Learning"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dde" or (errorHandler.buildDepError "dde"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."rc" or (errorHandler.buildDepError "rc"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      tests = {
        "rc-test" = {
          depends = [
            (hsPkgs."Learning" or (errorHandler.buildDepError "Learning"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dde" or (errorHandler.buildDepError "dde"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."rc" or (errorHandler.buildDepError "rc"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }