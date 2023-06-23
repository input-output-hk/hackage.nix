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
      specVersion = "2.4";
      identifier = { name = "warp-systemd"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Robert Hensing";
      maintainer = "hackage@roberthensing.nl";
      author = "Robert Hensing";
      homepage = "https://github.com/hercules-ci/warp-systemd";
      url = "";
      synopsis = "Socket activation and other systemd integration for the Warp web server (WAI)";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."systemd" or (errorHandler.buildDepError "systemd"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          ];
        buildable = true;
        };
      exes = {
        "warp-systemd-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-systemd" or (errorHandler.buildDepError "warp-systemd"))
            ];
          buildable = true;
          };
        };
      };
    }