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
    flags = { asserts = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "strict-mvar"; version = "1.0.0.0"; };
      license = "Apache-2.0";
      copyright = "2019-2023 Input Output Global Inc (IOG).";
      maintainer = "operations@iohk.io";
      author = "IOHK Engineering Team";
      homepage = "";
      url = "";
      synopsis = "Strict MVars for IO and IOSim";
      description = "Strict @MVar@ interface compatible with\n[IO](https://hackage.haskell.org/package/base-4.18.0.0/docs/Prelude.html#t:IO)\n& [io-sim](https://hackage.haskell.org/package/io-sim).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."io-classes" or (errorHandler.buildDepError "io-classes"))
        ];
        buildable = true;
      };
    };
  }