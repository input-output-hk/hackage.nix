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
      identifier = { name = "multilinear"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Artur M. Brodzki";
      maintainer = "artur@brodzki.org";
      author = "Artur M. Brodzki";
      homepage = "https://github.com/ArturB/multilinear#readme";
      url = "";
      synopsis = "Comprehensive and efficient (multi)linear algebra implementation.";
      description = "Comprehensive and efficient (multi)linear algebra implementation, based on generic tensor formalism and concise Ricci-Curbastro index syntax. More information available on GitHub: <https://github.com/ArturB/multilinear#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."mwc-random" or (errorHandler.buildDepError "mwc-random"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."multilinear" or (errorHandler.buildDepError "multilinear"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "memory" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."multilinear" or (errorHandler.buildDepError "multilinear"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
        "time" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."multilinear" or (errorHandler.buildDepError "multilinear"))
          ];
          buildable = true;
        };
      };
    };
  }