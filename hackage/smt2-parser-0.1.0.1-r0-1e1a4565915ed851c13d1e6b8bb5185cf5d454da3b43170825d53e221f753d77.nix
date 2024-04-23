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
      identifier = { name = "smt2-parser"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 crvdgc";
      maintainer = "ubikium@gmail.com";
      author = "crvdgc";
      homepage = "https://github.com/crvdgc/smt2-parser#readme";
      url = "";
      synopsis = "A Haskell parser for SMT-LIB version 2.6";
      description = "Please see the README on GitHub at <https://github.com/crvdgc/smt2-parser#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "smt2-parser-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."smt2-parser" or (errorHandler.buildDepError "smt2-parser"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }