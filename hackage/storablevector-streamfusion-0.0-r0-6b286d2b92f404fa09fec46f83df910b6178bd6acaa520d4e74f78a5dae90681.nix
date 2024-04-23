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
    flags = { splitbase = true; buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "storablevector-streamfusion"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <storablevector@henning-thielemann.de>";
      author = "Henning Thielemann <storablevector@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Storable_Vector";
      url = "http://code.haskell.org/~thielema/storablevector-streamfusion/";
      synopsis = "Conversion between storablevector and stream-fusion lists with fusion";
      description = "This package brings together the best of two worlds:\nThe flexibility of plain lists and speed of low-level arrays.\nLists are lazy per element,\nthus allowing for elegant tying-the-knot algorithms\nand correct fusion of subsequent operations,\nand they support any element type, including functions.\nStorablevectors do not have these features.\nInstead they are fast, including very fast access via indices,\nthey are memory efficient and allow simple exchange with C.\n\nThis package provides the canonical functions\nfor conversion from StorableVector to Stream and back.\nBy a simple fusion rule\nthey let the interim Stream based lists disappear in many situations,\nresulting in fast low-level loops.\nSuch fusion could not be correct on StorableVectors.\nE.g. consider\n\n> import qualified Data.StorableVector.Lazy as SV\n> SV.zipWith f (SV.unfoldr size g a) (SV.cons b (SV.unfoldr size h c))\n\nwhich yields a storable vector with the chunk structure\n\n> [1, size, size, ...]\n\nand the following strictness behaviour:\nFor computation of the first value of the result,\nthe first chunk with size @size@ of @SV.unfoldr size g a@\nhas to be fully evaluated.\nThis has two advantages:\nFirstly, you do not really want that behaviour,\nbut you accept it for the sake of overall performance.\nSecondly, the odd behaviour cannot easily be preserved by fusion,\nand we must resist to tell the optimizer incorrect rules.\n\nSo here is the solution: Write\n\n> import qualified Data.StorableVector.Lazy.Stream as SVG\n> import qualified Data.List.Stream as Stream\n> SVG.from chunkSize $\n>    Stream.zipWith f\n>       (Stream.unfoldr g a)\n>       (Stream.cons b (Stream.unfoldr h c))\n\nand get two advantages.\nFirst: You do not have to pass the @size@ parameter at the leaves,\nbut only once at the top.\nSecond: Fusion jumps in and turns everything in a single efficient @SV.unfoldr@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."storablevector" or (errorHandler.buildDepError "storablevector"))
          (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      exes = {
        "speedtest" = {
          depends = [
            (hsPkgs."stream-fusion" or (errorHandler.buildDepError "stream-fusion"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = if !flags.buildtests then false else true;
        };
      };
    };
  }