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
    flags = { doctest = false; isdev = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hedgehog-utils"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "none";
      maintainer = "Carl W";
      author = "Carl W";
      homepage = "https://github.com/carlwr/hedgehog-utils#readme";
      url = "";
      synopsis = "Utilities for Hedgehog";
      description = "Various extra utilities for Hedgehog, the property-testing framework.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ];
        buildable = true;
      };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-core" or (errorHandler.buildDepError "hspec-core"))
            (hsPkgs."hspec-hedgehog" or (errorHandler.buildDepError "hspec-hedgehog"))
            (hsPkgs."hedgehog-utils" or (errorHandler.buildDepError "hedgehog-utils"))
            (hsPkgs."hspec-tidy-formatter" or (errorHandler.buildDepError "hspec-tidy-formatter"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.hspec-discover.components.exes.hspec-discover or (pkgs.pkgsBuildBuild.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hedgehog-utils" or (errorHandler.buildDepError "hedgehog-utils"))
            (hsPkgs."doctest-parallel" or (errorHandler.buildDepError "doctest-parallel"))
          ];
          buildable = if !flags.doctest || compiler.isGhc && compiler.version.ge "9.14"
            then false
            else true;
        };
      };
    };
  }