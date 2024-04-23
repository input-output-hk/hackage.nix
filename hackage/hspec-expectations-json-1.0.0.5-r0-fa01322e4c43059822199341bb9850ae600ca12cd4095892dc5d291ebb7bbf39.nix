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
      specVersion = "1.18";
      identifier = { name = "hspec-expectations-json"; version = "1.0.0.5"; };
      license = "MIT";
      copyright = "2020 Freckle Education";
      maintainer = "engineering@freckle.com";
      author = "Freckle Engineering";
      homepage = "https://github.com/freckle/hspec-expectations-json#readme";
      url = "";
      synopsis = "Hspec expectations for JSON Values";
      description = "Hspec expectations for JSON Values\n\nComparing JSON `Value`s in Haskell tests comes with some challenges:\n\n- In API responses, additive changes are typically safe and an important way\nto evolve responses without breaking clients. Therefore, assertions against\nsuch responses often want to ignore any unexpected keys in `Object`s (at any\ndepth), as any clients would.\n\n- Order often doesn't matter in API responses either, so it should be possible\nto assert equality regardless of `Array` ordering (again, at any depth).\n\n- When an assertion fails, showing the difference clearly needs to take the\nabove into account (i.e. it can't show keys you've ignored, or ordering\ndifferences you didn't care about), and it has to display things clearly,\ne.g. as a diff.\n\nThis library handles all these things.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Diff" or (errorHandler.buildDepError "Diff"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."aeson-qq" or (errorHandler.buildDepError "aeson-qq"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-expectations-json" or (errorHandler.buildDepError "hspec-expectations-json"))
          ];
          buildable = true;
        };
      };
    };
  }