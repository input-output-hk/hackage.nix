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
    flags = { new_type_eq = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "HList"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "oleg@pobox.com";
      author = "2004 Oleg Kiselyov (FNMOC, Monterey), Ralf Laemmel (CWI/VU, Amsterdam),\nKeean Schupke (London)";
      homepage = "";
      url = "";
      synopsis = "Heterogeneous lists";
      description = "HList provides many operations to create and manipulate\nheterogenous lists (HLists) whose length and element\ntypes are known at compile-time. HLists are used to implement\n\n* records\n* variants\n* type-indexed products (TIP)\n* type-indexed co-products (TIC)\n* keyword arguments\n\nUser code should import \"Data.HList\" or\n\"Data.HList.CommonMain\" for a slightly more limited scope";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-orphans" or (errorHandler.buildDepError "base-orphans"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ] ++ (pkgs.lib).optional (flags.new_type_eq) (hsPkgs."base" or (errorHandler.buildDepError "base"));
        buildable = true;
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = if compiler.isGhc && (compiler.version).le "7.9"
            then false
            else true;
          };
        "properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ];
          buildable = true;
          };
        };
      };
    }