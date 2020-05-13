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
      identifier = { name = "fast-arithmetic"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2017 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://github.com/vmchale/fast-arithmetic#readme";
      url = "";
      synopsis = "Fast number-theoretic functions.";
      description = "Fast number-theoretic code with a high level of safety guaranteed by ATS.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.buildToolDepError "Cabal")))
        (hsPkgs.buildPackages.http-client or (pkgs.buildPackages.http-client or (errorHandler.buildToolDepError "http-client")))
        (hsPkgs.buildPackages.http-client-tls or (pkgs.buildPackages.http-client-tls or (errorHandler.buildToolDepError "http-client-tls")))
        (hsPkgs.buildPackages.tar or (pkgs.buildPackages.tar or (errorHandler.buildToolDepError "tar")))
        (hsPkgs.buildPackages.zlib or (pkgs.buildPackages.zlib or (errorHandler.buildToolDepError "zlib")))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory or (errorHandler.buildToolDepError "directory")))
        (hsPkgs.buildPackages.parallel-io or (pkgs.buildPackages.parallel-io or (errorHandler.buildToolDepError "parallel-io")))
        ];
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "fast-arithmetic-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."fast-arithmetic" or (errorHandler.buildDepError "fast-arithmetic"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
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