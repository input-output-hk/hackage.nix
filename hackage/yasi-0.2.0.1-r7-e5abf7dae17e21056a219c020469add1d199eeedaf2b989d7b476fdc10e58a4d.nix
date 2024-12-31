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
      identifier = { name = "yasi"; version = "0.2.0.1"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "amesgen@amesgen.de";
      author = "amesgen";
      homepage = "https://github.com/amesgen/yasi";
      url = "";
      synopsis = "Yet another string interpolator";
      description = "Yet another string interpolator,\nwith a different set of tradeoffs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
          (hsPkgs."ghc-hs-meta" or (errorHandler.buildDepError "ghc-hs-meta"))
        ];
        buildable = true;
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."yasi" or (errorHandler.buildDepError "yasi"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-display" or (errorHandler.buildDepError "text-display"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.tasty-discover.components.exes.tasty-discover or (pkgs.pkgsBuildBuild.tasty-discover or (errorHandler.buildToolDepError "tasty-discover:tasty-discover")))
          ];
          buildable = true;
        };
      };
    };
  }