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
      identifier = { name = "tz"; version = "0.0.0.2"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/nilcons/haskell-tz";
      url = "";
      synopsis = "Time zones database and library";
      description = "This package has two main goals:\n\n* To distribute the standard time zone database in a cabal package,\nso that it can be used in Haskell programs uniformly on all\nplatforms.\n\n* To provide a library that can read time zone info files\n(aka. Olson files), and does time zone conversions in a /pure/ and\n/efficient/ way.\n\nThe current version ships the @2014b@ version of the time zone\ndatabase. See: <http://www.iana.org/time-zones> for more info.\n\nThe package is currently in a draft phase, I'm still experimenting\nwith different ideas wrt. scope\\/API\\/implementation\\/etc. All comments\nare welcome!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "th-test" = {
          depends = [
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or (errorHandler.buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."timezone-olson" or (errorHandler.buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or (errorHandler.buildDepError "timezone-series"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "bench_c" = {
          depends = [
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bindings-posix" or (errorHandler.buildDepError "bindings-posix"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        "bench_greg" = {
          depends = [
            (hsPkgs."tz" or (errorHandler.buildDepError "tz"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }