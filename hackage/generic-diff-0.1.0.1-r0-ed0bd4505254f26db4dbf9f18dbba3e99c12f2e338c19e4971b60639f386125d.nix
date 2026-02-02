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
      identifier = { name = "generic-diff"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright(c) Frederick Pringle 2025";
      maintainer = "freddyjepringle@gmail.com";
      author = "Frederick Pringle";
      homepage = "https://github.com/fpringle/generic-diff";
      url = "";
      synopsis = "Generic structural diffs";
      description = "Generic structural diffs on arbitrary datatypes,\nusing [generics-sop](https://hackage.haskell.org/package/generics-sop).\n\nSee the module documentation in \"Generics.Diff\".\n\nFor a wider range of instances for common types, see\n[generic-diff-instances](https://hackage.haskell.org/package/generic-diff-instances).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "generic-diff-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
            (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."generic-diff" or (errorHandler.buildDepError "generic-diff"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."basic-sop" or (errorHandler.buildDepError "basic-sop"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }