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
      specVersion = "1.24";
      identifier = { name = "sparse-tensor"; version = "0.2.1.1"; };
      license = "MIT";
      copyright = "2019 Tobias Reinhart and Nils Alex";
      maintainer = "tobi.reinhart@fau.de, nils.alex@fau.de";
      author = "Tobias Reinhart and Nils Alex";
      homepage = "https://github.com/TobiReinhart/sparse-tensor#readme";
      url = "";
      synopsis = "typesafe tensor algebra library";
      description = "\nThis package is intended to be used as a general purpose tensor algebra library.\nIt defines the usual tensor algebra functions such as addition, scalar multiplication, tensor product, and contractions,\nbut also general symmetrizations and further utility functions.\n\nThe implemented tensor data type is capable of being used with an arbitrary number of general abstract indices and can incorporate values\nof any type that allow for a meaningful addition, scaling, and multiplication. The package is thus very flexible and can easily be customised\nat wish.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
          ];
        buildable = true;
        };
      tests = {
        "test-sparse-tensor" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."sparse-tensor" or (errorHandler.buildDepError "sparse-tensor"))
            ];
          buildable = true;
          };
        };
      };
    }