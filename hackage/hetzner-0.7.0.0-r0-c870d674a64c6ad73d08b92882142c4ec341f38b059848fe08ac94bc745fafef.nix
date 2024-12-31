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
      specVersion = "1.18";
      identifier = { name = "hetzner"; version = "0.7.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      author = "Daniel Casanueva (daniel.casanueva `at` proton.me)";
      homepage = "https://gitlab.com/daniel-casanueva/haskell/hetzner";
      url = "";
      synopsis = "Hetzner Cloud and DNS library.";
      description = "Hetzner Cloud and DNS library. Check the readme and documentation for more details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."http-conduit" or (errorHandler.buildDepError "http-conduit"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."country" or (errorHandler.buildDepError "country"))
          (hsPkgs."ip" or (errorHandler.buildDepError "ip"))
          (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
        ];
        buildable = true;
      };
      exes = {
        "hetzner-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hetzner" or (errorHandler.buildDepError "hetzner"))
          ];
          buildable = true;
        };
        "hetzner-docs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
            (hsPkgs."hetzner" or (errorHandler.buildDepError "hetzner"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
          ];
          buildable = true;
        };
      };
    };
  }