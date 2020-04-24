{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tzdata"; version = "0.1.20180501.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/nilcons/haskell-tzdata";
      url = "";
      synopsis = "Time zone database (as files and as a module)";
      description = "The goal of this package is to distribute the standard Time Zone\nDatabase in a cabal package, so that it can be used in Haskell\nprograms uniformly on all platforms.\n\nThis package currently ships the @2018e@ version of the time zone\ndatabase.  The version of the time zone database shipped is always\nreflected in the version of this package: @x.y.YYYYMMDD.z@, then\n@YYYYMMDD@ is the official release date of time zone database.\n\nSee: <http://www.iana.org/time-zones> for more info about the time\nzone database.\n\nSee also the @tz@ package <http://hackage.haskell.org/package/tz> or\nthe @timezone-olson@ and @timezone-series@ packages that provide\nfacilities to /use/ the data shipped here. (The @tz@ package\nautomatically installs this package.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "test-db" = {
          depends = [
            (hsPkgs."tzdata" or ((hsPkgs.pkgs-errors).buildDepError "tzdata"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-th" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-th"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }