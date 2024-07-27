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
      identifier = { name = "oset"; version = "0.4.0.1"; };
      license = "MIT";
      copyright = "2019 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/oset#readme";
      url = "";
      synopsis = "An insertion-order-preserving set";
      description = "This package provides @OSet@, an insertion-order-preserving set, with type class instances for @Foldable@ and @Data@ as well as wrappers, @OSetL@ and @OSetR@, with left- and right-biased instances of @Semigroup@ and @Monoid@ respectively.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
      exes = {
        "oset-app" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."oset" or (errorHandler.buildDepError "oset"))
          ];
          buildable = true;
        };
      };
      tests = {
        "oset-spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."oset" or (errorHandler.buildDepError "oset"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }