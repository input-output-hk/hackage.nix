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
      identifier = { name = "exon"; version = "1.0.0.2"; };
      license = "BSD-2-Clause-Patent";
      copyright = "2022 Torsten Schmits";
      maintainer = "hackage@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://git.tryp.io/tek/exon";
      url = "";
      synopsis = "Customizable Quasiquote Interpolation";
      description = "See https://hackage.haskell.org/package/exon/docs/Exon.html";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."flatparse" or (errorHandler.buildDepError "flatparse"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."ghc-hs-meta" or (errorHandler.buildDepError "ghc-hs-meta"))
          (hsPkgs."incipit-base" or (errorHandler.buildDepError "incipit-base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."type-errors-pretty" or (errorHandler.buildDepError "type-errors-pretty"))
        ];
        buildable = true;
      };
      tests = {
        "exon-unit" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."exon" or (errorHandler.buildDepError "exon"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."incipit-base" or (errorHandler.buildDepError "incipit-base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "exon-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."exon" or (errorHandler.buildDepError "exon"))
            (hsPkgs."incipit-base" or (errorHandler.buildDepError "incipit-base"))
          ];
          buildable = true;
        };
      };
    };
  }