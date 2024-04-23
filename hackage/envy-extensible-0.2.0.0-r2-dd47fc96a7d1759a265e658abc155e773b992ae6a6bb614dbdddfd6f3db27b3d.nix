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
      identifier = { name = "envy-extensible"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 IIJ Innovation Institute, Inc.";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "IIJ Innovation Institute, Inc.";
      homepage = "https://github.com/igrep/envy-extensible#readme";
      url = "";
      synopsis = "Provides FromEnv in envy instance for Record of extensible.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
          (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
        ];
        buildable = true;
      };
      tests = {
        "envy-extensible-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."envy-extensible" or (errorHandler.buildDepError "envy-extensible"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."main-tester" or (errorHandler.buildDepError "main-tester"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "envy-extensible-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."extensible" or (errorHandler.buildDepError "extensible"))
            (hsPkgs."envy" or (errorHandler.buildDepError "envy"))
            (hsPkgs."envy-extensible" or (errorHandler.buildDepError "envy-extensible"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }