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
      identifier = { name = "fast-combinatorics"; version = "0.1.0.8"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com//fast-combinatorics#readme";
      url = "";
      synopsis = "Fast combinatorics.";
      description = "Fast combinatorics code with a high level of safety guaranteed by writing it in ATS.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.http-client or (pkgs.pkgsBuildBuild.http-client or (errorHandler.setupDepError "http-client")))
        (hsPkgs.pkgsBuildBuild.http-client-tls or (pkgs.pkgsBuildBuild.http-client-tls or (errorHandler.setupDepError "http-client-tls")))
        (hsPkgs.pkgsBuildBuild.tar or (pkgs.pkgsBuildBuild.tar or (errorHandler.setupDepError "tar")))
        (hsPkgs.pkgsBuildBuild.zlib or (pkgs.pkgsBuildBuild.zlib or (errorHandler.setupDepError "zlib")))
        (hsPkgs.pkgsBuildBuild.directory or (pkgs.pkgsBuildBuild.directory or (errorHandler.setupDepError "directory")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."composition-prelude" or (errorHandler.buildDepError "composition-prelude"))
        ];
        buildable = true;
      };
      tests = {
        "fast-combinatorics-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-combinatorics" or (errorHandler.buildDepError "fast-combinatorics"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
      benchmarks = {
        "fast-combinatorics-bench" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-combinatorics" or (errorHandler.buildDepError "fast-combinatorics"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
          ];
          buildable = true;
        };
      };
    };
  }