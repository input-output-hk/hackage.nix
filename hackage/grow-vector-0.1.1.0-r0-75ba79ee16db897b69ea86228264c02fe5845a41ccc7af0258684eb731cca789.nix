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
    flags = { liquidhaskell = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "grow-vector"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "2020 Anton Gushcha";
      maintainer = "Anton Gushcha <ncrashed@protonmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Mutable vector with efficient appends";
      description = "Mutable vector with efficient updates. Simple implementation on partially filled array with capacity tracking and resizing.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
        ] ++ (if flags.liquidhaskell
          then [
            (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
            (hsPkgs."liquid-vector" or (errorHandler.buildDepError "liquid-vector"))
            (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
          ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ]);
        buildable = true;
      };
      tests = {
        "grow-vector-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."grow-vector" or (errorHandler.buildDepError "grow-vector"))
            (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hspec" or (errorHandler.buildDepError "tasty-hspec"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }