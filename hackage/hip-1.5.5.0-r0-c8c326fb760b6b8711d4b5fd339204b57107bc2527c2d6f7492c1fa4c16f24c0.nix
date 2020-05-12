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
    flags = { disable-chart = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hip"; version = "1.5.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lehins@yandex.ru";
      author = "Alexey Kuleshevich";
      homepage = "https://github.com/lehins/hip";
      url = "";
      synopsis = "Haskell Image Processing (HIP) Library.";
      description = "\nHaskell Image Processing (HIP) Library provides an easy to use interface with a whole variaty of image manipulation capabilities.\n\nProcessing can be done sequentially as well as in parallel, with an inherited fusion capabily, all through <https://hackage.haskell.org/package/repa repa> and <https://hackage.haskell.org/package/vector vector> packages. It is highly extendable, with an ability to add various color spaces or provide implementations for underlying array like custom data structures.\n\nIt is capable of reading and writing a number of popular image formats by using <https://hackage.haskell.org/package/JuicyPixels JuciyPixels> and <https://hackage.haskell.org/package/netpbm netpbm> packages. Being a pure Haskell library it does not require any external programs, although it can display images using a program of your choice.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."JuicyPixels" or (errorHandler.buildDepError "JuicyPixels"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."colour" or (errorHandler.buildDepError "colour"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."netpbm" or (errorHandler.buildDepError "netpbm"))
          ] ++ (pkgs.lib).optionals (!flags.disable-chart) [
          (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or (errorHandler.buildDepError "Chart-diagrams"))
          ];
        buildable = true;
        };
      tests = {
        "hip-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "convolution" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."repa" or (errorHandler.buildDepError "repa"))
            (hsPkgs."repa-algorithms" or (errorHandler.buildDepError "repa-algorithms"))
            (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        "histogram" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hip" or (errorHandler.buildDepError "hip"))
            ];
          buildable = if flags.disable-chart then false else true;
          };
        };
      };
    }