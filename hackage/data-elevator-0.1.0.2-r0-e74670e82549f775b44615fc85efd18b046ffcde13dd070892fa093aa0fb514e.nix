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
      identifier = { name = "data-elevator"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "2022";
      maintainer = "sgraf1337@gmail.com";
      author = "Sebastian Graf";
      homepage = "";
      url = "";
      synopsis = "Coerce between unlifted boxed and lifted types.";
      description = "Near zero-cost coercions between unlifted boxed and lifted types.\nThere are 3 main ingredients to this library:\n(1) a newtype @Strict :: LiftedType -> UnliftedType@,\n(2) a newtype @Lazy :: UnliftedType -> LiftedType@, and\n(3) a coercion function @levCoerce@ to coerce existing functions\ninto accepting @Strict@ wrapper.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "data-elevator-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-elevator" or (errorHandler.buildDepError "data-elevator"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }