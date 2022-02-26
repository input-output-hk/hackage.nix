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
      identifier = { name = "data-clist"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jeremy Huffman <jeremy@jeremyhuffman.com>, John Van Enk <vanenkj@gmail.com>";
      author = "John Van Enk <vanenkj@gmail.com>";
      homepage = "https://github.com/sw17ch/data-clist";
      url = "";
      synopsis = "Simple functional ring type.";
      description = "Simple functional bidirectional ring type.\nGiven that the ring terminiology clashes with certain\nmathematical branches, we're using the term CList or\nCircularList instead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."data-clist" or (errorHandler.buildDepError "data-clist"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }