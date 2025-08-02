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
      identifier = { name = "heterogeneous-comparison"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) L. S. Leary 2025";
      maintainer = "L.S.Leary.II@gmail.com";
      author = "L. S. Leary";
      homepage = "https://github.com/LSLeary/heterogeneous-comparison";
      url = "";
      synopsis = "Comparison of distinctly typed values with evidence capture";
      description = "There are times when values need to be tested for equality or compared for ordering, even if they aren't statically known to be of equivalent types.\nSuch a test, if successful, may allow that knowledge to be recovered.\nWe improve upon the state of the art in this domain by generalising over different notions of type equivalence.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ord-axiomata" or (errorHandler.buildDepError "ord-axiomata"))
        ];
        buildable = true;
      };
    };
  }