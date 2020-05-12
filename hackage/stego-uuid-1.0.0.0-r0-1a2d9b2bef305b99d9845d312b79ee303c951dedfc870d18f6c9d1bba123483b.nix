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
      specVersion = "1.20";
      identifier = { name = "stego-uuid"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Dimitri DeFigueiredo";
      maintainer = "defigueiredo@ucdavis.edu";
      author = "Dimitri DeFigueiredo";
      homepage = "https://github.com/dimitri-xyz/stego-uuid#readme";
      url = "";
      synopsis = "Generator and verifier for steganographic numbers";
      description = "`stego-uuid` allows one to mark 128-bit UUIDs. If created from a random 64-bit number, the\nwhole 128-bit UUID will look random to everyone, except those who know the secret detection key.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
          (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          ];
        buildable = true;
        };
      tests = {
        "test-stego-uuid" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."stego-uuid" or (errorHandler.buildDepError "stego-uuid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            ];
          buildable = true;
          };
        };
      };
    }