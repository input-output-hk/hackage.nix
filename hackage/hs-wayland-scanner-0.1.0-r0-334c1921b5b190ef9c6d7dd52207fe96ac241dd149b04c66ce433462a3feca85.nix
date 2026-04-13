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
      specVersion = "3.0";
      identifier = { name = "hs-wayland-scanner"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrea.rossato@unitn.it";
      author = "Andrea Rossato";
      homepage = "https://codeberg.org/andrea_rossato/hs-wayland-scanner";
      url = "";
      synopsis = "Haskell implementation of the Wayland Message Definition Language";
      description = "hs-wayland-scanner is an implementation of the Wayland\nMessage Definition Language. It will produce low-level\nHaskell bindings for Wayland protocols.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
        ];
        buildable = true;
      };
      exes = {
        "hws" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          ];
          buildable = true;
        };
      };
    };
  }