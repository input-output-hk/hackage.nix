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
      specVersion = "1.18";
      identifier = { name = "hs2ats"; version = "0.2.1.4"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/hs2ats#readme";
      url = "";
      synopsis = "Create ATS types from Haskell types";
      description = "This package enables scanning Haskell source files for data types and then generating [ATS](http://www.ats-lang.org/) types from them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
          (hsPkgs."language-ats" or (errorHandler.buildDepError "language-ats"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."cases" or (errorHandler.buildDepError "cases"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
          (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          ];
        buildable = true;
        };
      exes = {
        "hs2ats" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs2ats" or (errorHandler.buildDepError "hs2ats"))
            ];
          buildable = true;
          };
        };
      tests = {
        "hs2ats-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs2ats" or (errorHandler.buildDepError "hs2ats"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."hspec-dirstream" or (errorHandler.buildDepError "hspec-dirstream"))
            (hsPkgs."system-filepath" or (errorHandler.buildDepError "system-filepath"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "hs2ats-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hs2ats" or (errorHandler.buildDepError "hs2ats"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            ];
          buildable = true;
          };
        };
      };
    }