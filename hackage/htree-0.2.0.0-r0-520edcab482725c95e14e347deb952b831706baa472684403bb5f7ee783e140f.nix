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
      specVersion = "3.4";
      identifier = { name = "htree"; version = "0.2.0.0"; };
      license = "AGPL-3.0-or-later";
      copyright = "";
      maintainer = "contact@mangoiv.com";
      author = "mangoiv";
      homepage = "";
      url = "";
      synopsis = "a library to build and work with heterogeneous, type level indexed rose trees";
      description = "This library implements a heterogeneous rose-tree (HTree) that is indexed by a type-level rosetree (TyTree).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "htree-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."htree" or (errorHandler.buildDepError "htree"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."th-compat" or (errorHandler.buildDepError "th-compat"))
          ];
          buildable = true;
        };
      };
    };
  }