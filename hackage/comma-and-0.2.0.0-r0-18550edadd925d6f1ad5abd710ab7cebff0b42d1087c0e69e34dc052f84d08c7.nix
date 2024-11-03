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
      identifier = { name = "comma-and"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2024 Willem Van Onsem";
      maintainer = "hapytexeu+gh@gmail.com";
      author = "Willem Van Onsem";
      homepage = "https://github.com/hapytex/comma-and#readme";
      url = "";
      synopsis = "Join text together with commas, and \"and\".";
      description = "Join text together with commas, and \"and\".";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
        ];
        buildable = true;
      };
      tests = {
        "and" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."comma-and" or (errorHandler.buildDepError "comma-and"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
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