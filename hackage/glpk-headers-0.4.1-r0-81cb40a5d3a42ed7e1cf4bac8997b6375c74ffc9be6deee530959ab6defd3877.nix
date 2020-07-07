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
      identifier = { name = "glpk-headers"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Patrick Steele";
      maintainer = "steele.pat@gmail.com";
      author = "Patrick Steele";
      homepage = "https://github.com/prsteele/glpk-headers-haskell#readme";
      url = "";
      synopsis = "Low-level Haskell bindings to GLPK.";
      description = "Please see the README on GitHub at <https://github.com/prsteele/glpk-headers-haskell#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
          ];
        buildable = true;
        };
      tests = {
        "GlpkHs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."derive-storable" or (errorHandler.buildDepError "derive-storable"))
            (hsPkgs."glpk-headers" or (errorHandler.buildDepError "glpk-headers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          libs = [ (pkgs."glpk" or (errorHandler.sysDepError "glpk")) ];
          buildable = true;
          };
        };
      };
    }