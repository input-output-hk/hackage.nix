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
      specVersion = "3.0";
      identifier = { name = "halide-JuicyPixels"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2022-2023 Tom Westerhout";
      maintainer = "Tom Westerhout <14264576+twesterhout@users.noreply.github.com>";
      author = "Tom Westerhout";
      homepage = "https://github.com/twesterhout/halide-haskell";
      url = "";
      synopsis = "Integration between Halide and JuicyPixels";
      description = "This package provides instances of [Language.Halide.IsHalideBuffer](https://hackage.haskell.org/package/halide-haskell/docs/Language-Halide.html#t:IsHalideBuffer)\nfor image types from the [JuicyPixels](https://hackage.haskell.org/package/JuicyPixels) library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      tests = {
        "halide-JuicyPixels-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
            (hsPkgs."halide-JuicyPixels" or (errorHandler.buildDepError "halide-JuicyPixels"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          ];
          buildable = true;
        };
      };
    };
  }