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
    flags = { checked = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ring-buffers"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/ring-buffers";
      url = "";
      synopsis = "mutable ring buffers with atomic updates in GHC Haskell";
      description = "mutable ring buffers with atomic updates in GHC Haskell, using the contiguous api internally to provide multiple array backends";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."semirings" or (errorHandler.buildDepError "semirings"))
          (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
        ] ++ (if flags.checked
          then [
            (hsPkgs."contiguous-checked" or (errorHandler.buildDepError "contiguous-checked"))
            (hsPkgs."primitive-checked" or (errorHandler.buildDepError "primitive-checked"))
          ]
          else [
            (hsPkgs."contiguous" or (errorHandler.buildDepError "contiguous"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          ]);
        buildable = true;
      };
      tests = {
        "properties" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."ring-buffers" or (errorHandler.buildDepError "ring-buffers"))
          ];
          buildable = true;
        };
        "unit" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."ring-buffers" or (errorHandler.buildDepError "ring-buffers"))
          ];
          buildable = true;
        };
      };
    };
  }