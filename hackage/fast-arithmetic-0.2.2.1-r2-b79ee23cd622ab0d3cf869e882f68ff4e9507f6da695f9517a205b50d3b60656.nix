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
      identifier = { name = "fast-arithmetic"; version = "0.2.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/fast-arithmetic#readme";
      url = "";
      synopsis = "Fast functions on integers.";
      description = "Fast functions for number theory and combinatorics with a high level of safety guaranteed by [ATS](http://www.ats-lang.org/). This package also provides a\n'Storable' instance for GMP's @mpz@ type.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.http-client or (pkgs.pkgsBuildBuild.http-client or (errorHandler.setupDepError "http-client")))
        (hsPkgs.pkgsBuildBuild.http-client-tls or (pkgs.pkgsBuildBuild.http-client-tls or (errorHandler.setupDepError "http-client-tls")))
        (hsPkgs.pkgsBuildBuild.tar or (pkgs.pkgsBuildBuild.tar or (errorHandler.setupDepError "tar")))
        (hsPkgs.pkgsBuildBuild.zlib or (pkgs.pkgsBuildBuild.zlib or (errorHandler.setupDepError "zlib")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
        (hsPkgs.pkgsBuildBuild.parallel-io or (pkgs.pkgsBuildBuild.parallel-io or (errorHandler.setupDepError "parallel-io")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
        ];
        buildable = true;
      };
      tests = {
        "fast-arithmetic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-arithmetic" or (errorHandler.buildDepError "fast-arithmetic"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "fast-arithmetic-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-arithmetic" or (errorHandler.buildDepError "fast-arithmetic"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }