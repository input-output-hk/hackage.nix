{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { disable-chart = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hip"; version = "1.5.4.0"; };
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
          (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."netpbm" or ((hsPkgs.pkgs-errors).buildDepError "netpbm"))
          ] ++ (pkgs.lib).optionals (!flags.disable-chart) [
          (hsPkgs."Chart" or ((hsPkgs.pkgs-errors).buildDepError "Chart"))
          (hsPkgs."Chart-diagrams" or ((hsPkgs.pkgs-errors).buildDepError "Chart-diagrams"))
          ];
        buildable = true;
        };
      tests = {
        "hip-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."hip" or ((hsPkgs.pkgs-errors).buildDepError "hip"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or ((hsPkgs.pkgs-errors).buildToolDepError "hspec-discover")))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "convolution" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."repa" or ((hsPkgs.pkgs-errors).buildDepError "repa"))
            (hsPkgs."repa-algorithms" or ((hsPkgs.pkgs-errors).buildDepError "repa-algorithms"))
            (hsPkgs."hip" or ((hsPkgs.pkgs-errors).buildDepError "hip"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          buildable = true;
          };
        "histogram" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."hip" or ((hsPkgs.pkgs-errors).buildDepError "hip"))
            ];
          buildable = if flags.disable-chart then false else true;
          };
        };
      };
    }