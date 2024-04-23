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
    flags = { scrape-bds = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pvss"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2016 IOHK";
      maintainer = "vincent.hanquez@iohk.io";
      author = "Vincent Hanquez";
      homepage = "https://github.com/input-output-hk/pvss-haskell#readme";
      url = "";
      synopsis = "Public Verifiable Secret Sharing";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."cryptonite-openssl" or (errorHandler.buildDepError "cryptonite-openssl"))
          (hsPkgs."foundation" or (errorHandler.buildDepError "foundation"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
        ] ++ pkgs.lib.optionals (flags.scrape-bds) [
          (hsPkgs."mcl" or (errorHandler.buildDepError "mcl"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        buildable = if compiler.isGhc && compiler.version.lt "8.0"
          then false
          else true;
      };
      exes = {
        "pvss-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."pvss" or (errorHandler.buildDepError "pvss"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
      tests = {
        "pvss-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."pvss" or (errorHandler.buildDepError "pvss"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }