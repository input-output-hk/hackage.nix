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
      identifier = { name = "ord-axiomata"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) L. S. Leary 2025";
      maintainer = "L.S.Leary.II@gmail.com";
      author = "L. S. Leary";
      homepage = "https://github.com/LSLeary/ord-axiomata";
      url = "";
      synopsis = "Axiomata & lemmata for easier use of Data.Type.Ord";
      description = "When using \"Data.Type.Ord\", there are many facts one intuitively expects to hold that GHC is not clever enough to infer.\nWe rectify this situation with a `TotalOrder` typeclass providing axiomata with which such facts may be proven to GHC.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }