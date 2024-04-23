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
    flags = { usecereal = true; usebinary = true; usearbitrary = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "bytestring-typenats"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy.groven@gmail.com";
      author = "Jeremy Groven";
      homepage = "https://github.com/tsuraan/bytestring-typenats";
      url = "";
      synopsis = "Bytestrings with typenat lengths";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
        ] ++ pkgs.lib.optional (flags.usecereal) (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))) ++ pkgs.lib.optional (flags.usebinary) (hsPkgs."binary" or (errorHandler.buildDepError "binary"))) ++ pkgs.lib.optionals (flags.usearbitrary) [
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."blake2" or (errorHandler.buildDepError "blake2"))
          (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
        ];
        buildable = true;
      };
      tests = {
        "test-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."cryptohash" or (errorHandler.buildDepError "cryptohash"))
            (hsPkgs."bytestring-typenats" or (errorHandler.buildDepError "bytestring-typenats"))
          ] ++ pkgs.lib.optional (flags.usearbitrary) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = true;
        };
      };
      benchmarks = {
        "benchmark-all" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."bytestring-typenats" or (errorHandler.buildDepError "bytestring-typenats"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          ] ++ pkgs.lib.optional (flags.usearbitrary) (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"));
          buildable = true;
        };
      };
    };
  }