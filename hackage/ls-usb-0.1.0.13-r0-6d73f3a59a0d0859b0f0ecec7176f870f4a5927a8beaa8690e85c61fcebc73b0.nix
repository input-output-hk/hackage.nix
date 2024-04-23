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
      identifier = { name = "ls-usb"; version = "0.1.0.13"; };
      license = "BSD-3-Clause";
      copyright = "2009–2012 Roel van Dijk <vandijk.roel@gmail.com>";
      maintainer = "Roel van Dijk <vandijk.roel@gmail.com>";
      author = "Roel van Dijk <vandijk.roel@gmail.com>";
      homepage = "https://github.com/roelvandijk/ls-usb";
      url = "";
      synopsis = "List USB devices";
      description = "A small utility for displaying information about USB devices\nconnected to your system.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ls-usb" = {
          depends = [
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-unicode-symbols" or (errorHandler.buildDepError "base-unicode-symbols"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."usb" or (errorHandler.buildDepError "usb"))
            (hsPkgs."usb-id-database" or (errorHandler.buildDepError "usb-id-database"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          ];
          buildable = true;
        };
      };
    };
  }