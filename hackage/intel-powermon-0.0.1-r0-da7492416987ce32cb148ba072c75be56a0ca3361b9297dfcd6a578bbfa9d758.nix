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
      identifier = { name = "intel-powermon"; version = "0.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "zl29ah@gmail.com";
      author = "Sergey Alirzaev";
      homepage = "";
      url = "";
      synopsis = "Poll modern Intel/AMD CPU power consumption on Linux via RAPL.";
      description = "Poll modern Intel/AMD CPU power consumption on Linux via RAPL.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "intel-powermon" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."streaming" or (errorHandler.buildDepError "streaming"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."posix-timer" or (errorHandler.buildDepError "posix-timer"))
          ];
          buildable = true;
        };
      };
    };
  }