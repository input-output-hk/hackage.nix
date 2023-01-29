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
      specVersion = "2.4";
      identifier = { name = "glpk-headers"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2018-2023, Patrick Steele";
      maintainer = "steele.pat@gmail.com";
      author = "Patrick Steele";
      homepage = "";
      url = "";
      synopsis = "Low-level Haskell bindings to the GLPK library";
      description = "Please see the README on GitHub at <https://github.com/prsteele/math-programming/blob/main/glpk-headers/README.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          ];
        libs = [ (pkgs."glpk" or (errorHandler.sysDepError "glpk")) ];
        buildable = true;
        };
      tests = {
        "glpk-headers-haskell-test-suite" = {
          depends = [
            (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }