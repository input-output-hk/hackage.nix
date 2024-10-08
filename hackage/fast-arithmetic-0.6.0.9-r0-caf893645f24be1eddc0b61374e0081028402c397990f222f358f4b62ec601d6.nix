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
    flags = { no-integer-gmp = false; development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "fast-arithmetic"; version = "0.6.0.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Fast functions on integers.";
      description = "Fast functions for number theory and combinatorics with a high level of safety guaranteed by [ATS](http://www.ats-lang.org/).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
        ] ++ pkgs.lib.optional (!flags.no-integer-gmp) (hsPkgs."gmpint" or (errorHandler.buildDepError "gmpint"));
        buildable = (if system.isWindows
          then false
          else true) && (if system.isWindows then false else true);
      };
      tests = {
        "fast-arithmetic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-arithmetic" or (errorHandler.buildDepError "fast-arithmetic"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          ] ++ (if compiler.isGhc && compiler.version.ge "8.4"
            then [
              (hsPkgs."combinat-compat" or (errorHandler.buildDepError "combinat-compat"))
            ]
            else [
              (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
            ]);
          buildable = true;
        };
      };
      benchmarks = {
        "fast-arithmetic-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-arithmetic" or (errorHandler.buildDepError "fast-arithmetic"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."arithmoi" or (errorHandler.buildDepError "arithmoi"))
          ] ++ (if compiler.isGhc && compiler.version.ge "8.4"
            then [
              (hsPkgs."combinat-compat" or (errorHandler.buildDepError "combinat-compat"))
            ]
            else [
              (hsPkgs."combinat" or (errorHandler.buildDepError "combinat"))
            ]);
          buildable = true;
        };
      };
    };
  }