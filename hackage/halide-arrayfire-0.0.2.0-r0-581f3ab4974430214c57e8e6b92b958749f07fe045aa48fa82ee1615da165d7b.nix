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
      identifier = { name = "halide-arrayfire"; version = "0.0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2022-2023 Tom Westerhout";
      maintainer = "Tom Westerhout <14264576+twesterhout@users.noreply.github.com>";
      author = "Tom Westerhout";
      homepage = "https://github.com/twesterhout/halide-haskell";
      url = "";
      synopsis = "Integration between Halide and ArrayFire";
      description = "This package provides instances of [Language.Halide.IsHalideBuffer](https://hackage.haskell.org/package/halide-haskell/docs/Language-Halide.html#t:IsHalideBuffer)\nfor arrays from the [arrayfire](https://hackage.haskell.org/package/arrayfire) library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."arrayfire" or (errorHandler.buildDepError "arrayfire"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "halide-arrayfire-test" = {
          depends = [
            (hsPkgs."arrayfire" or (errorHandler.buildDepError "arrayfire"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."halide-arrayfire" or (errorHandler.buildDepError "halide-arrayfire"))
            (hsPkgs."halide-haskell" or (errorHandler.buildDepError "halide-haskell"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }