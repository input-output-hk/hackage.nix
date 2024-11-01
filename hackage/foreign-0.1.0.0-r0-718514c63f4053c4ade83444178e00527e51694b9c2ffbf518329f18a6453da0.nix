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
      specVersion = "2.4";
      identifier = { name = "foreign"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c)";
      maintainer = "mu@laxcat.xyz";
      author = "mu";
      homepage = "https://github.com/4eUeP/foreign";
      url = "";
      synopsis = "A collection of helpers for ffi.";
      description = "Please see the README on Github at <https://github.com/4eUeP/foreign#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-unlifted" or (errorHandler.buildDepError "primitive-unlifted"))
        ];
        buildable = true;
      };
      tests = {
        "foreign-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."foreign" or (errorHandler.buildDepError "foreign"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }