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
      identifier = { name = "fallible"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "MATSUBARA Nobutada";
      maintainer = "t12307043@gunma-u.ac.jp";
      author = "MATSUBARA Nobutada";
      homepage = "https://github.com/matsubara0507/fallible#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/matsubara0507/mixlogue#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
        ];
        buildable = true;
      };
      tests = {
        "fallible-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fallible" or (errorHandler.buildDepError "fallible"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
    };
  }