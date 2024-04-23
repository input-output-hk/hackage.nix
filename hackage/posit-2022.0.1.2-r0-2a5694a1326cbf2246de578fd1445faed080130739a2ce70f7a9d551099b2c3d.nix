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
    flags = { do-no-storable-random = false; do-liquid = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "posit"; version = "2022.0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "2021-2023 Nathan Waivio";
      maintainer = "nathan.waivio@gmail.com";
      author = "Nathan Waivio";
      homepage = "https://github.com/waivio/posit#readme";
      url = "";
      synopsis = "Posit Numbers";
      description = "The Posit Number format attempting to conform to the Posit Standard Versions 3.2 and 2022.  Where Real numbers are approximated by `Maybe Rational` and sampled in a similar way to the projective real line.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."data-dword" or (errorHandler.buildDepError "data-dword"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
        ] ++ pkgs.lib.optional (!flags.do-liquid) (hsPkgs."base" or (errorHandler.buildDepError "base"))) ++ pkgs.lib.optional (!flags.do-no-storable-random) (hsPkgs."random" or (errorHandler.buildDepError "random"))) ++ pkgs.lib.optionals (flags.do-liquid) [
          (hsPkgs."liquid-base" or (errorHandler.buildDepError "liquid-base"))
          (hsPkgs."liquidhaskell" or (errorHandler.buildDepError "liquidhaskell"))
        ];
        buildable = true;
      };
      tests = {
        "posit-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
          ];
          buildable = true;
        };
        "test-posit-functions" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
            (hsPkgs."Chart" or (errorHandler.buildDepError "Chart"))
            (hsPkgs."Chart-cairo" or (errorHandler.buildDepError "Chart-cairo"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "test-posit-weigh" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."posit" or (errorHandler.buildDepError "posit"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."weigh" or (errorHandler.buildDepError "weigh"))
          ];
          buildable = true;
        };
      };
    };
  }