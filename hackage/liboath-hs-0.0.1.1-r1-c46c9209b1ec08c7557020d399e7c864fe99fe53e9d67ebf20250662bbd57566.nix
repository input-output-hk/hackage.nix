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
      identifier = { name = "liboath-hs"; version = "0.0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "2017 Matt Parsons";
      maintainer = "parsonsmatt@gmail.com";
      author = "Matt Parsons";
      homepage = "https://github.com/parsonsmatt/liboath-hs#readme";
      url = "";
      synopsis = "Bindings to liboath";
      description = "See README for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
        libs = [ (pkgs."oath" or (errorHandler.sysDepError "oath")) ];
        pkgconfig = [
          (pkgconfPkgs."liboath" or (errorHandler.pkgConfDepError "liboath"))
          ];
        buildable = true;
        };
      exes = {
        "oathtool-hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."liboath-hs" or (errorHandler.buildDepError "liboath-hs"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
          buildable = true;
          };
        };
      tests = {
        "liboath-hs-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."liboath-hs" or (errorHandler.buildDepError "liboath-hs"))
            ];
          buildable = true;
          };
        };
      };
    }