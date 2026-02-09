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
      specVersion = "2.2";
      identifier = { name = "uhd"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Travis Whitaker 2026";
      maintainer = "pi.boy.travis@gmail.com";
      author = "Travis Whitaker";
      homepage = "https://github.com/TravisWhitaker/uhd-hs";
      url = "";
      synopsis = "Interface with Ettus USRP SDRs";
      description = "Interface with Ettus USRP SDRs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = [ (pkgs."uhd" or (errorHandler.sysDepError "uhd")) ];
        buildable = true;
      };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."uhd" or (errorHandler.buildDepError "uhd"))
          ];
          buildable = true;
        };
        "rx_samples_hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."uhd" or (errorHandler.buildDepError "uhd"))
          ];
          buildable = true;
        };
      };
    };
  }