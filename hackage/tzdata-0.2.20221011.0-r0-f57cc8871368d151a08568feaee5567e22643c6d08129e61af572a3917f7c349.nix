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
      identifier = { name = "tzdata"; version = "0.2.20221011.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Janus Troelsen <ysangkok@gmail.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/ysangkok/haskell-tzdata";
      url = "";
      synopsis = "Time zone database (as files and as a module)";
      description = "The goal of this package is to distribute the standard Time Zone\nDatabase in a cabal package, so that it can be used in Haskell\nprograms uniformly on all platforms.\n\nThis package currently ships the @2022e@ version of the time zone\ndatabase.  The version of the time zone database shipped is always\nreflected in the version of this package: @x.y.YYYYMMDD.z@, then\n@YYYYMMDD@ is the official release date of time zone database.\n\nThis version contains the \"fat\" variant of the time zone files (which is not\nthe default for the upstream since @2020b@) to facilitate the transition. The\nnext major version (@0.3@) will ship the \"slim\" variant.\n\nSee: <http://www.iana.org/time-zones> for more info about the time\nzone database.\n\nSee also the @tz@ package <http://hackage.haskell.org/package/tz> or\nthe @timezone-olson@ and @timezone-series@ packages that provide\nfacilities to /use/ the data shipped here. (The @tz@ package\nautomatically installs this package.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
      };
      tests = {
        "test-db" = {
          depends = [
            (hsPkgs."tzdata" or (errorHandler.buildDepError "tzdata"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-th" or (errorHandler.buildDepError "tasty-th"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }