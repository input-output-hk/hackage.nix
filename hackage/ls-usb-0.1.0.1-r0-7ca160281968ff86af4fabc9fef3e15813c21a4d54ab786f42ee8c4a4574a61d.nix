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
      specVersion = "1.6";
      identifier = { name = "ls-usb"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2009 Roel van Dijk, Bas van Dijk";
      maintainer = "vandijk.roel@gmail.com";
      author = "Roel van Dijk, Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "List USB devices";
      description = "A small utility that lists USB devices connected to your system.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ls-usb" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
            (hsPkgs."usb-id-database" or (errorHandler.buildDepError "usb-id-database"))
          ];
          buildable = true;
        };
      };
    };
  }