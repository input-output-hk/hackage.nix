{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { template-haskell = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tz"; version = "0.1.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/nilcons/haskell-tz";
      url = "";
      synopsis = "Efficient time zone handling";
      description = "The goal of this package is to provide a library that can read time\nzone info files (aka. Olson files), and does time zone conversions\nin a /pure/ and /efficient/ way.\n\nWe also provide platform-independent and/or compiled-in access to\nthe standard Time Zone Dabase by the means of the companion @tzdata@\npackage <http://hackage.haskell.org/package/tzdata>.\n\nThe package is currently in an alpha phase, I'm still experimenting\nwith different ideas wrt. scope\\/API\\/implementation\\/etc. All\ncomments are welcome!";
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
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."tzdata" or ((hsPkgs.pkgs-errors).buildDepError "tzdata"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ] ++ (pkgs.lib).optional (flags.template-haskell) (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"));
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
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
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
          buildable = if !flags.template-haskell then false else true;
          };
        "test-all" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."tzdata" or ((hsPkgs.pkgs-errors).buildDepError "tzdata"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
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
        "bench_conv" = {
          depends = [
            (hsPkgs."tz" or ((hsPkgs.pkgs-errors).buildDepError "tz"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."criterion" or ((hsPkgs.pkgs-errors).buildDepError "criterion"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            ];
          buildable = true;
          };
        };
      };
    }