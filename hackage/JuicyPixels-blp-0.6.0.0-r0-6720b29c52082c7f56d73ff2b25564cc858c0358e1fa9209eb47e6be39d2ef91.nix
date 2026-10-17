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
      specVersion = "2.2";
      identifier = { name = "JuicyPixels-blp"; version = "0.6.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015-2026 Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "https://github.com/NCrashed/JuicyPixels-blp#readme";
      url = "";
      synopsis = "BLP format decoder/encoder over JuicyPixels library";
      description = "Read and write BLP1, the texture format of Warcraft III, and read BLP2,\nits World of Warcraft variant, with images as\n[JuicyPixels](https://hackage.haskell.org/package/JuicyPixels) types.\nSupports JPEG, paletted, DXT1/3/5 and BGRA content with and without\nalpha, mipmaps, and the non-standard files common in community maps.\nIncludes @blp2any@, a converter between BLP and PNG, JPEG, TIFF, GIF and\nBMP.\n\nSee the README for usage and limitations, and @docs/format.md@ for the\nfile format.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = true;
      };
      exes = {
        "blp2any" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-blp" or (errorHandler.buildDepError "JuicyPixels-blp"))
            (hsPkgs."optparse-simple" or (errorHandler.buildDepError "optparse-simple"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
          buildable = true;
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-blp" or (errorHandler.buildDepError "JuicyPixels-blp"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
            (hsPkgs."JuicyPixels-blp" or (errorHandler.buildDepError "JuicyPixels-blp"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
          ];
          buildable = true;
        };
      };
    };
  }