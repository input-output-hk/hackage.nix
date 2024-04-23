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
      identifier = { name = "hpc-threshold"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ecky Putrady";
      maintainer = "eckyputrady@gmail.com";
      author = "Ecky Putrady";
      homepage = "https://github.com/eckyputrady/hpc-threshold#readme";
      url = "";
      synopsis = "Ensure the code coverage is above configured thresholds";
      description = "Please see the README on Github at <https://github.com/eckyputrady/hpc-threshold#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
        ];
        buildable = true;
      };
      exes = {
        "hpc-threshold" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hpc-threshold" or (errorHandler.buildDepError "hpc-threshold"))
          ];
          buildable = true;
        };
      };
      tests = {
        "hpc-threshold-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."hpc-threshold" or (errorHandler.buildDepError "hpc-threshold"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }