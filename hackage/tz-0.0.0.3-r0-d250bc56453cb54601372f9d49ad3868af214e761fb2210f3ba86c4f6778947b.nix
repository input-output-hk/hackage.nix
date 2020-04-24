{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tz"; version = "0.0.0.3"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-posix" or ((hsPkgs.pkgs-errors).buildDepError "bindings-posix"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        "th-test" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            ];
          buildable = true;
          };
        "dummy-genZones" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-posix" or ((hsPkgs.pkgs-errors).buildDepError "bindings-posix"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timezone-olson" or ((hsPkgs.pkgs-errors).buildDepError "timezone-olson"))
            (hsPkgs."timezone-series" or ((hsPkgs.pkgs-errors).buildDepError "timezone-series"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        "bench_c" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bindings-posix" or ((hsPkgs.pkgs-errors).buildDepError "bindings-posix"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        "bench_greg" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."thyme" or ((hsPkgs.pkgs-errors).buildDepError "thyme"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }