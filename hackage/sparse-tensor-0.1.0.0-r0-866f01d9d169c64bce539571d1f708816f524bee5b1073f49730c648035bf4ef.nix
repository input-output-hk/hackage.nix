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
      specVersion = "1.10";
      identifier = { name = "sparse-tensor"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Tobias Reinhart and Nils Alex";
      maintainer = "tobi.reinhart@fau.de, nils.alex@fau.de";
      author = "Tobias Reinhart and Nils Alex";
      homepage = "https://github.com/TobiReinhart/sparse-tensor#readme";
      url = "";
      synopsis = "typesafe tensor algebra library ";
      description = "\nThis package is intended to be used as a general purpose tensor algebra library.\nIt defines the usual tensor algebra functions such as addition, scalar multiplication, tensor product, and contractions,\nbut also general symmetrizations and further utility functions.\n\nThe implemented tensor data type is capable of being used with an arbitrary number of general abstract indices and can incorporate values\nof any type that allow for a meaningful addition, scaling, and multiplication. The package is thus very flexible and can easily be customised\nat wish.\n\nThis package performs best when the values a given tensor provides are explicitly needed. In particular all incorporated functions are\nimplemented such that they explicitly manipulate the values of the given tensors. This allows for fast evaluation of the individual values from given tensors.\n\nIn order to improve memory usage, the tensors in this package employ a sparse storage paradigm. In other words, one may define a tensor by only\nproviding its non-zero values explicitly. All remaining values are taken to be zero.\n\nFurthermore this package also provides the functionality of fully automatically computing all linear independent expressions with given rank and symmetries\nthat can be composed by using the Minkowski metric and the totally antisymmetric tensor. In order words, the package includes functions that\nconstruct a basis of the space of Lorentz invariant tensors of given symmetry and rank. With slight modifications the therefore implemented algorithms can\nalso be used for the computation of invariant tensor bases of any other special orthogonal group @SO(p,q)@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."tf-random" or (errorHandler.buildDepError "tf-random"))
          (hsPkgs."ghc-typelits-natnormalise" or (errorHandler.buildDepError "ghc-typelits-natnormalise"))
          (hsPkgs."ghc-typelits-knownnat" or (errorHandler.buildDepError "ghc-typelits-knownnat"))
          (hsPkgs."eigen" or (errorHandler.buildDepError "eigen"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          (hsPkgs."ad" or (errorHandler.buildDepError "ad"))
          ];
        buildable = true;
        };
      };
    }