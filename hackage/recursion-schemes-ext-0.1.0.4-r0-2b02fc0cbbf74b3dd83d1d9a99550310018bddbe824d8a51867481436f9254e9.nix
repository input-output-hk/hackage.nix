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
    flags = { development = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "recursion-schemes-ext"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vanessa.mchale@reconfigure.io";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/recursion-schemes-ext#readme";
      url = "";
      synopsis = "Amateur addenda to recursion-schemes";
      description = "This package provides some exotic recursion schemes that I miss when I leave Idris.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        buildable = true;
        };
      tests = {
        "recursion-schemes-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."recursion-schemes-ext" or (errorHandler.buildDepError "recursion-schemes-ext"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "recursion-schemes-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."recursion-schemes-ext" or (errorHandler.buildDepError "recursion-schemes-ext"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }